class AddIndexToCategories < ActiveRecord::Migration[6.1]
  def change
    add_index :categories, :code, unique: true
  end
end
