FactoryBot.define do
  factory :category do
    name { Faker::Lorem.word }

    trait :with_stock do
      stocks { [association(:stock)] }
    end
  end
end
