class AddNameAndFollwersColumnsToInfluencers < ActiveRecord::Migration[5.0]
  def change
    add_column :influencers, :name, :string
    add_column :influencers, :followers, :integer
  end
end
