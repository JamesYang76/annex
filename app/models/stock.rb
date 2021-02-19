class Stock < ApplicationRecord
  belongs_to :supplier
  belongs_to :category
end
