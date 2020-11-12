FactoryBot.define do
  factory :user do
    name { 'Test User' }
    email { Faker::Internet.email }
    password { '123456789' }
  end
end
