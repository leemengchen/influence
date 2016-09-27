class CreateInfluencers < ActiveRecord::Migration[5.0]
  def change
    create_table :influencers do |t|
      t.string :firstName
      t.string :lastName
      t.string :email
      t.string :igUsername
      t.integer :gender

      t.timestamps
    end
  end
end
