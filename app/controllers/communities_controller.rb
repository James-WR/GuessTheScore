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

  # def find_match_day_number(league_name)
  #   case league_name
  #   when "Premier League"
  #     return 15
  #   when "Women's Super League"
  #     return 9
  #   when "Bundesliga"
  #     return 14
  #   end
  # end

  def show
    @community = Community.find(params[:id])
    @member_guesses = current_user.member_guesses.order(created_at: :asc).select do |m|
      m.fixture.match_day == @community.league.match_day && m.fixture.league == @community.league
    end
    @member_guesses_results = current_user.member_guesses.order(created_at: :asc).select do |m|
      m.fixture.match_day == @community.league.match_day - 1 && m.fixture.league == @community.league
    end
    @member_guesses_fixed = current_user.member_guesses.order(created_at: :asc).select do |m|
      m.fixture.match_day == 15 && m.fixture.league == @community.league
    end
    @fixtures = Fixture.with_home_results.with_away_results.where(league_id: @community.league.id,
                                                                 match_day: @community.league.match_day - 1)
    generate_member_points(@fixtures)
    @sorted_weekly = @community.members.order(weekly_points: :desc, weekly_exact: :desc, weekly_fuzzy: :desc)
    @sorted_members = @community.members.order(overall_points: :desc, overall_exact: :desc, overall_fuzzy: :desc)
  end

  def generate_member_points(fixtures)
    @community.members.update_all(weekly_exact: 0, weekly_fuzzy: 0, weekly_points: 0)
    @community.members.each do |member|
      weekly_exact = 0
      weekly_fuzzy = 0
      # weekly_points = 0
      fixtures.each do |fixture|
        guess = member.member_guesses.where(fixture_id: fixture.id).first
        if guess.home_goals_guess == fixture.home_goals_result && guess.away_goals_guess == fixture.away_goals_result
          weekly_exact += 1
        elsif (guess.home_goals_guess <=> guess.away_goals_guess) == (fixture.home_goals_result <=> fixture.away_goals_result)
          weekly_fuzzy += 1
        end
      end
      weekly_points = (weekly_exact * 3) + weekly_fuzzy
      member.update(weekly_exact: weekly_exact, weekly_fuzzy: weekly_fuzzy, weekly_points: weekly_points)
      member.update(overall_exact: member.overall_exact += weekly_exact, overall_fuzzy: member.overall_fuzzy += weekly_fuzzy, overall_points: member.overall_points += weekly_points)
    end
  end

  def fast_forward
    @community = Community.find(params[:id])
    League.all.each do |league|
      league.update(match_day: league.match_day += 1)
    end
    fixtures = Fixture.with_home_results.with_away_results.where(league_id: @community.league.id,
                                                                 match_day: @community.league.match_day - 1)
    generate_member_points(fixtures)
    redirect_to community_path(@community), notice: "Scores submitted!"
  end

  def new
    @community = Community.new
    @league_names = League.all.map(&:league_name)
  end

  def create
    @community = Community.new(community_params)
    @community.owner = current_user
    data = "#{@community.owner.email}#{@community.community_name}"
    @community.join_code = Digest::SHA256.hexdigest data

    if @community.save
      redirect_to communities_path
    else
      render "pages/home"
    end
  end

  def join
    @community = Community.where(join_code: params[:query]).first
    if @community
      Member.create(user: current_user, community: @community, overall_exact: 0, overall_fuzzy: 0, overall_points: 0)
    end
    redirect_to communities_path
  end

  private

  def community_params
    params.require(:community).permit(:community_name, :league_id)
  end
end
