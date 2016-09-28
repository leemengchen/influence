class AddMarketerIdToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :marketer_id, :integer
  end
end
