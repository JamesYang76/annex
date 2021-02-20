class AddIndexToStocks < ActiveRecord::Migration[6.1]
  def change
    add_index :stocks, [:code, :supplier_id, :category_id], unique: true
  end
end
