FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    password { "123@mudar" }
    password_confirmation { "123@mudar" }
  end
end
