# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :stocks
  has_many :suppliers, through: :stocks

  validates :code, presence: true
  validates :name, presence: true
end
