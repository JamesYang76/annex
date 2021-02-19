# frozen_string_literal: true

class Stock < ApplicationRecord
  belongs_to :supplier
  belongs_to :category
end
