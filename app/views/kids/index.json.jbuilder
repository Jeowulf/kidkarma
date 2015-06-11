json.array!(@kids) do |kid|
  json.extract! kid, :id, :first_name, :last_name, :email, :password_digest, :remember_token
  json.url kid_url(kid, format: :json)
end
