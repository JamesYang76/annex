FactoryBot.define do
  factory :stock do
    name { Faker::Lorem.word }
    sequence(:code) { |n| n.to_s }
    supplier
    category
  end
end
