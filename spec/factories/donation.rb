FactoryBot.define do
  factory :donation do
    author factory: :user

    name { 'Here you go some money' }
    amount { 50_000 }
    dream_id { 1 }
  end
end
