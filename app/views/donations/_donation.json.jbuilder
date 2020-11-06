json.extract! donation, :id, :user_id, :name, :amount, :dream_id, :created_at, :updated_at
json.url donation_url(donation, format: :json)
