class CreateMarketers < ActiveRecord::Migration[5.0]
  def change
    create_table :marketers do |t|
      t.string :name
      t.string :companyName
      t.string :email
      t.float :budget
      t.string :message
      t.string :country

      t.timestamps
    end
  end
end
