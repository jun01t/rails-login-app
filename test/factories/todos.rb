FactoryBot.define do
  factory :todo do
    association :user
    todo { Faker::Lorem.characters(number: 100) }
  end
end
