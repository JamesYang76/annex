# frozen_string_literal: true

class Supplier < ApplicationRecord
  has_many :stocks
  has_many :categories, through: :stocks

  validates :code, presence: true
  validates :name, presence: true

  validates :code, uniqueness: true
end
