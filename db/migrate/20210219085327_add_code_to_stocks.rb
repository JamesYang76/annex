# frozen_string_literal: true

class AddCodeToStocks < ActiveRecord::Migration[6.1]
  def change
    add_column :stocks, :code, :string
  end
end
