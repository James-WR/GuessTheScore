class CommunitiesController < ApplicationController
  def index
    @communities = Community.all
  end

  def show
    @community = Community.find(params[:id])
    @sorted_members = @community.members.sort_by{|member| member.overall_points}
  end

  def create
    @community = Community.new(params[:community_name, :league_id])
    @community.user = current_user
    if @community.save
      redirect_to community_path(@community)
    end
  end
end
