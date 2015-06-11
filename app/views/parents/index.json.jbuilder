json.array!(@parents) do |parent|
  json.extract! parent, :id, :first_name, :last_name, :email, :password_digest, :remember_token
  json.url parent_url(parent, format: :json)
end
