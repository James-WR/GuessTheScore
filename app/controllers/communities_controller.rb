class CommunitiesController < ApplicationController
  def index
    @communities = Community.all
  end
end
