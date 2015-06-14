json.array!(@votes) do |vote|
  json.extract! vote, :id, :color, :kid_id, :scoop_id
  json.url vote_url(vote, format: :json)
end
