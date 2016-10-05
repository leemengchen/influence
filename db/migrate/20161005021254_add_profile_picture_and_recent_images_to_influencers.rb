class AddProfilePictureAndRecentImagesToInfluencers < ActiveRecord::Migration[5.0]
  def change
    add_column :influencers, :profile_picture, :string
    add_column :influencers, :recent_images, :string
  end
end
