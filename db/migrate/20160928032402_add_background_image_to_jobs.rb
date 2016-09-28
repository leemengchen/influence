class AddBackgroundImageToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :background_image, :string
  end
end
