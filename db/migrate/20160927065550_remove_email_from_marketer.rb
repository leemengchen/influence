class RemoveEmailFromMarketer < ActiveRecord::Migration[5.0]
  def change
    remove_column :marketers, :email, :string
  end
end
