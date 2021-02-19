# frozen_string_literal: true

class AddCodeToSuppliers < ActiveRecord::Migration[6.1]
  def change
    add_column :suppliers, :code, :string
  end
end
