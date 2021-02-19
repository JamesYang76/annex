# frozen_string_literal: true

FactoryBot.define do
  factory :supplier do
    name { Faker::Lorem.word }
    sequence(:code, &:to_s)
  end
end
