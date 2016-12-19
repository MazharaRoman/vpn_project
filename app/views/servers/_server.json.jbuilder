json.extract! server, :id, :type, :ip, :region, :server_user, :key, :configPath, :created_at, :updated_at
json.url server_url(server, format: :json)