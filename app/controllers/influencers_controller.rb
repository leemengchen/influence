class InfluencersController < ApplicationController

  def index
  end

  def show


    @influencer = Influencer.find_by(id:params[:id])
  end
end
