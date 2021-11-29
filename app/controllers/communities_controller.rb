class CommunitiesController < ApplicationController
  def index
    @communities = Community.all
  end

  def find_match_day_number(league_name)
    if league_name == "Premier League"
      return 15
    elsif league_name == "Women's Super League"
      return 9
    elsif league_name == "Bundesliga"
      return 14
    end
  end

  def show
    @community = Community.find(params[:id])
    @member_guesses = current_user.member_guesses.order(created_at: :asc).select { |m| m.fixture.match_day == find_match_day_number(@community.league.league_name) && m.fixture.league == @community.league}
    @sorted_members = @community.members.order(overall_points: :desc, overall_exact: :desc, overall_fuzzy: :desc)
    Fixture.where(league_id: @community.league.id, match_day: find_match_day_number(@community.league.league_name) - 1).each do |fixture|
      @community.members.each do |member|
        member.update(weekly_exact: 0, weekly_fuzzy: 0, weekly_points: 0)
        weekly_exact = 0
        weekly_fuzzy = 0
        weekly_points = 0
        guess = member.member_guesses.where(fixture_id: fixture.id).first
        if guess.home_goals_guess == fixture.home_goals_result && guess.away_goals_guess == fixture.away_goals_result
          weekly_exact += 1
        elsif guess.home_goals_guess > guess.away_goals_guess && fixture.home_goals_result > fixture.away_goals_result
          weekly_fuzzy += 1
        elsif guess.away_goals_guess > guess.home_goals_guess && fixture.away_goals_result > fixture.home_goals_result
          weekly_fuzzy += 1
        end
        weekly_points = (weekly_exact * 3) + weekly_fuzzy
        member.update(weekly_exact: weekly_exact, weekly_fuzzy: weekly_fuzzy, weekly_points: weekly_points)
      end
    end
    @sorted_weekly = @community.members.order(weekly_points: :desc, weekly_exact: :desc, weekly_fuzzy: :desc)
  end

  def new
    @community = Community.new
    @league_names = League.all.map(&:league_name)
  end

  def create
    @community = Community.new(community_params)
    @community.owner = current_user
    data = "#{owner.email}#{community_name}#{Time.now}"
    @join_code = Digest::SHA256.hexdigest data

    if @community.save
      redirect_to community_path(@community)
    else
      render "pages/home"
    end
  end

  private

  def community_params
    params.require(:community).permit(:community_name, :league_id)
  end
end
