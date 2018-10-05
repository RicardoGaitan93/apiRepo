json.extract! user, :id, :Usercode, :name, :nickname, :email, :created_at, :updated_at
json.url user_url(user, format: :json)
