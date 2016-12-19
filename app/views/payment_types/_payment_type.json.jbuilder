json.extract! payment_type, :id, :year, :month, :day, :price, :server_id, :created_at, :updated_at
json.url payment_type_url(payment_type, format: :json)