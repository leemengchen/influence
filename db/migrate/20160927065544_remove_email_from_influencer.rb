class RemoveEmailFromInfluencer < ActiveRecord::Migration[5.0]
  def change
    remove_column :influencers, :email, :string
  end
end
