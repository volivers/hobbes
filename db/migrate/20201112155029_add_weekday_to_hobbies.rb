class AddWeekdayToHobbies < ActiveRecord::Migration[6.0]
  def change
    add_column :hobbies, :weekday, :string
  end
end
