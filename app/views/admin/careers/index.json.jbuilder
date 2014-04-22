json.array!(@careers) do |career|
  json.extract! career, :id, :hero_image, :hero_title, :hero_copy, :intro_title, :intro_title, :cta_title, :cta_copy
  json.url career_url(career, format: :json)
end
