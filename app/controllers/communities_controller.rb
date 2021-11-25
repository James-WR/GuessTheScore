class CommunitiesController < ApplicationController
  def index
    @communities = Community.all
  end

  def show
    @community = Community.find(params[:id])
    @sorted_members = @community.members.order(overall_points: :desc, overall_exact: :desc, overall_fuzzy: :desc)
    Fixture.where(league_id: 1, match_day: 12).each do |fixture|
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
          weekly_fuzzy +=1
        end
        weekly_points = (weekly_exact * 3) + weekly_fuzzy
        member.update(weekly_exact: weekly_exact, weekly_fuzzy: weekly_fuzzy, weekly_points: weekly_points)
      end
    end
    @sorted_weekly = @community.members.order(weekly_points: :desc, weekly_exact: :desc, weekly_fuzzy: :desc)
  end
end
