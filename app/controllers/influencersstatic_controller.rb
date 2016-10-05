class InfluencersstaticController < ApplicationController

  def index
    @influencer = Influencer.all
  end

  def show
    @influencer = Influencer.find_by(id: params[:id])
    # Influencer.find(params[:id])
    @ig_media = Instagram.recent_media(@influencer)

    @get_recent_images = @ig_media['data'].each do
      |element| puts element['images']['thumbnail']['url']
    end
  end
end
