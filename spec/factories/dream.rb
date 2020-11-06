FactoryBot.define do
  factory :dream do
    user factory: :user

    name { 'Donate me money please' }
    money_objective { 1_000_000 }
  end
end
