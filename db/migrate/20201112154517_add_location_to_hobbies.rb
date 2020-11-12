class AddLocationToHobbies < ActiveRecord::Migration[6.0]
  def change
    add_column :hobbies, :location, :string
  end
end
