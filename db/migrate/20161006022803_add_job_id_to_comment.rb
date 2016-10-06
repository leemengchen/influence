class AddJobIdToComment < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :job_id, :integer
  end
end
