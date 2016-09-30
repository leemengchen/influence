class RemoveUsernameFromInfluencer < ActiveRecord::Migration[5.0]
  def change
    remove_column :influencers, :username, :string
  end
end
