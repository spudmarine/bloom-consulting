json.array!(@successes) do |success|
  json.extract! success, :id, :title, :author, :blurb, :article
  json.url success_url(success, format: :json)
end
