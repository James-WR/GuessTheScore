class CommunitiesController < ApplicationController
  def index
    @communities = Community.all
  end

  def show
    @community = Community.find(params[:id])
    @sorted_members = @community.members.sort_by{|member| member.overall_points}
  end

  def create
    @community = Community.new(community_params)
    @community.owner = current_user
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
