json.array!(@mains) do |main|
  json.extract! main, :id, :hero_image, :hero_title, :stratum_1_image, :stratum_1_title, :stratum_1_copy, :stratum_1_cta, :stratum_1_link, :practice_area_1_image, :practice_area_1_title, :practice_area_1_copy, :practice_area_1_link, :practice_area_2_image, :practice_area_2_title, :practice_area_2_copy, :practice_area_2_link, :practice_area_3_image, :practice_area_3_title, :practice_area_3_copy, :practice_area_3_link, :stratum_2_image, :stratum_2_title, :stratum_2_copy, :stratum_2_cta, :stratum_2_link
  json.url main_url(main, format: :json)
end
