FactoryBot.define do
  factory :stock do
    name { Faker::Lorem.word }
    supplier
    category
  end
end
