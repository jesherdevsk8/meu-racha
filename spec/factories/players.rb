FactoryBot.define do
  factory :player do
    name { Faker::Name.name }
    sequence(:nickname) { |n| "nickname#{n}"  }
    shirt_number { 99 }
    status { 0 }
    score_goal { 1000 }
    position { 1 }
  end
end
