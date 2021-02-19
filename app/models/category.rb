# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :stocks
  has_many :suppliers, through: :stocks
end
