class MembersController < ApplicationController
  def update
    @member = Member.find(params[:id])
    @member.update(member_params)
  end

  private

  def member_params
    params.require(:member).permit(:weekly_exact, :weekly_fuzzy, :weekly_points)
  end
end
