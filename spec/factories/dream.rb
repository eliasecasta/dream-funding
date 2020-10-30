FactoryBot.define do
  factory :dream do
    user factory: :user

    name { 'Donate me money please' }
    money_objective { 1000000 }
  end
end
