class AddCategoryToHobbies < ActiveRecord::Migration[6.0]
  def change
    add_column :hobbies, :category, :string
  end
end
