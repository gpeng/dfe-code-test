FactoryBot.define do
  factory :trainee do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    provider
  end
end
