FactoryBot.define do
  factory :supplier do
    name { Faker::Lorem.word }
    sequence(:code) { |n| n.to_s }
  end
end
