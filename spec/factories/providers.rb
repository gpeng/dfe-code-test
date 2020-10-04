FactoryBot.define do
  factory :provider do
    name { Faker::University.name }
    address_1 { Faker::Address.street_address }
    postcode { Faker::Address.postcode }
  end
end
