class CreateHobbies < ActiveRecord::Migration[6.0]
  def change
    create_table :hobbies do |t|
      t.string :title
      t.string :description
      t.integer :level
      t.integer :occupancy_limit
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
