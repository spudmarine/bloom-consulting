json.array!(@teams) do |team|
  json.extract! team, :id, :intro_title, :intro_copy
  json.url team_url(team, format: :json)
end
