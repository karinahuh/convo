json.extract! user, :id, :nickname, :email, :age, :gender, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
