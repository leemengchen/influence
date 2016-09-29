class InfluencersController < ApplicationController

  def index
  end

  def show
    @influencers = Influencers.find_by(params[:id])
  end
end
