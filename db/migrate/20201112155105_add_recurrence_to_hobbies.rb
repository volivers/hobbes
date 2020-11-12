class AddRecurrenceToHobbies < ActiveRecord::Migration[6.0]
  def change
    add_column :hobbies, :recurrence, :string
  end
end
