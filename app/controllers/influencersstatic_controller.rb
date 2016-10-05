class InfluencersstaticController < ApplicationController

  def index
  end

  def show
    @influencer = Influencer.find_by(id: params[:id])
    # Influencer.find(params[:id])
  end

end
