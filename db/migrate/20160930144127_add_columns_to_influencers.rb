class AddColumnsToInfluencers < ActiveRecord::Migration[5.0]
  def change
    add_column :influencers, :nickname, :string
    add_column :influencers, :username, :string
  end
end
