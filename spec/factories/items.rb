FactoryGirl.define do
  factory :item do
    name Faker::Lorem.sentence
    time_remaining Faker::Number.between(1,100)
    user
  end
end
