class AddIndexToSuppliers < ActiveRecord::Migration[6.1]
  def change
    add_index :suppliers, :code, unique: true
  end
end
