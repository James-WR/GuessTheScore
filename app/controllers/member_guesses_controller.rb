class MemberGuessesController < ApplicationController
  def create
    @community = Community.find(params[:community_id])
    @member = Member.where(community: @community, user: current_user).first
    @fixture = Fixture.find(params[:member_guess][:fixture])
    @member_guess = MemberGuess.new(member_guess_params)
    @member_guess.member = @member
    @member_guess.fixture = @fixture

    if @member_guess.save
      redirect_to community_path(@community)
    else
      render "community/:id"
    end
  end

  def update
    @community = Community.find(params[:community_id])
    @member_guess = MemberGuess.find(params[:id])
    @member_guess.update(member_guess_params)

    # redirect_to community_path(@community)
  end

  private

  def member_guess_params
    params.require(:member_guess).permit(:home_goals_guess, :away_goals_guess)
  end
end
