class RemoveColumsFromJobs < ActiveRecord::Migration[5.0]
  def change
    remove_column :jobs, :avatar, :string
  end
end
