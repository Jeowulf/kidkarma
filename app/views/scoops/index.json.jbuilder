json.array!(@scoops) do |scoop|
  json.extract! scoop, :id, :headline, :story
  json.url scoop_url(scoop, format: :json)
end
