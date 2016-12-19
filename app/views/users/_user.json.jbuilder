json.extract! user, :id, :login, :password, :email, :active, :created_at, :updated_at
json.url user_url(user, format: :json)