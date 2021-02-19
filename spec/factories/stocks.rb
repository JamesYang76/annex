# frozen_string_literal: true

FactoryBot.define do
  factory :stock do
    name { Faker::Lorem.word }
    sequence(:code, &:to_s)
    supplier
    category
  end
end
