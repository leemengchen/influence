class AddImageToInfluencers < ActiveRecord::Migration[5.0]
  def change
    add_column :influencers, :image, :string
  end
end
