class AddAvatarToMarketers < ActiveRecord::Migration[5.0]
  def change
    add_column :marketers, :avatar, :string
  end
end
