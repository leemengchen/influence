class AddAccessTokenToInfluencers < ActiveRecord::Migration[5.0]
  def change
    add_column :influencers, :access_token, :string
  end
end
