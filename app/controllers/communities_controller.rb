class CommunitiesController < ApplicationController
  def index
    @communities = Community.all
  end

  def show
    @community = Community.find(params[:id])
    @sorted_members = @community.members.sort_by{|member| member.overall_points}
  end
end
