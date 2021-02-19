# frozen_string_literal: true

class Stock < ApplicationRecord
  belongs_to :supplier
  belongs_to :category

  validates :code, presence: true
  validates :name, presence: true
end
