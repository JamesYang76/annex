FactoryBot.define do
  factory :category do
    name { Faker::Lorem.word }

    sequence(:code) { |n| n.to_s }

    trait :with_stock do
      stocks { [association(:stock)] }
    end
  end
end
