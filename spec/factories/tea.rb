FactoryBot.define do
  factory :tea do
    title { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph }
    temperature { Faker::Number.within(range: 200.0..220.0).round(2) }
    brew_time { Faker::Number.between(1, 20) }
  end
end
