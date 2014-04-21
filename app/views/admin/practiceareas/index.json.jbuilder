json.array!(@practiceareas) do |practicearea|
  json.extract! practicearea, :id, :hero_image, :hero_title, :hero_copy, :pa1_title, :pa1_copy, :pa2_title, :pa2_copy, :pa3_title, :pa3_copy
  json.url practicearea_url(practicearea, format: :json)
end
