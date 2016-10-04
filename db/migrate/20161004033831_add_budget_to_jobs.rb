class AddBudgetToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :budget, :float
  end
end
