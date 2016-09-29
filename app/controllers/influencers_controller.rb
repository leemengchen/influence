class InfluencersController < ApplicationController

  def index
  end

  def show
    @influencers = Influencer.find_by(params[:id])
  end
end
