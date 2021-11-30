class CommunitiesController < ApplicationController
  def index
    # memberships = current_user.members
    @communities = current_user.members.map(&:community)
    # memberships.each do |membership|
    #   Community.all.each do |community|
    #     @communities << community if community.members.include?(membership)
    #   end
    # end
  end

  def member?(community)
    community.members.include?(current_user)
  end

  def find_match_day_number(league_name)
    case league_name
    when "Premier League"
      return 15
    when "Women's Super League"
      return 9
    when "Bundesliga"
      return 14
    end
  end

  def show
    @community = Community.find(params[:id])
    @member_guesses = current_user.member_guesses.order(created_at: :asc).select do |m|
      m.fixture.match_day == find_match_day_number(@community.league.league_name) && m.fixture.league == @community.league
    end
    @sorted_members = @community.members.order(overall_points: :desc, overall_exact: :desc, overall_fuzzy: :desc)
    fixtures = Fixture.with_home_results.with_away_results.where(league_id: @community.league.id,
                                                                 match_day: find_match_day_number(@community.league.league_name) - 1)
    fixtures.each do |fixture|
      @community.members.each do |member|
        member.update(weekly_exact: 0, weekly_fuzzy: 0, weekly_points: 0)
        weekly_exact = 0
        weekly_fuzzy = 0
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
    data = "#{@community.owner.email}#{@community.community_name}#{Time.now}"
    @community.join_code = Digest::SHA256.hexdigest data

    if @community.save
      redirect_to community_path(@community)
    else
      render "pages/home"
    end
  end

  def join
    @community = Community.where(join_code: params[:query]).first
    if @community
      Member.create(user: current_user, community: @community, overall_exact: 0, overall_fuzzy: 0, overall_points: 0)
    end
  end

  private

  def community_params
    params.require(:community).permit(:community_name, :league_id)
  end
end
