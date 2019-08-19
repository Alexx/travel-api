require ('rails_helper')

FactoryBot.define do
  factory :destination do
    name {Faker::Address.unique.city}
  end
end
