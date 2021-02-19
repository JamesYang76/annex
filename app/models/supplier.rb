class Supplier < ApplicationRecord
  has_many :stocks
  has_many :categories, through: :stocks
end
