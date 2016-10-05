class AddFollowingAndMediaToInfluencers < ActiveRecord::Migration[5.0]
  def change
    add_column :influencers, :media, :integer
    add_column :influencers, :following, :integer
  end
end
