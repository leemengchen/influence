class InfluencersController < ApplicationController

  def index
  end

  def show

    @influencer = Influencer.find_by(id:params[:id])
    binding.pry
    @popular = Instagram.media_popular
    # @influncer = Influncer.update_attributes(igUsername:)

  end
end
