class RemoveImageFromInfluencers < ActiveRecord::Migration[5.0]
  def change
    remove_column :influencers, :image, :string
  end
end
