# frozen_string_literal: true

class CreateStocks < ActiveRecord::Migration[6.1]
  def change
    create_table :stocks do |t|
      t.string :name
      t.references :supplier, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
