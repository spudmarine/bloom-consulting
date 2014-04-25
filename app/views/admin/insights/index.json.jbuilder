json.array!(@insights) do |insight|
  json.extract! insight, :id, :title, :author, :blurb, :article
  json.url insight_url(insight, format: :json)
end
