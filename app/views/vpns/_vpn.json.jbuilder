json.extract! vpn, :id, :server_id, :user_id, :login, :password, :created_at, :updated_at
json.url vpn_url(vpn, format: :json)