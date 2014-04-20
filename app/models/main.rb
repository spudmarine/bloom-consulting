class Main < ActiveRecord::Base
	
	attr_accessible :hero_image, :hero_title, :stratum_1_image, :stratum_1_title, :stratum_1_copy, :stratum_1_cta, :stratum_1_link, :practice_area_1_image, :practice_area_1_title, :practice_area_1_copy, :practice_area_1_link, :practice_area_2_image, :practice_area_2_title, :practice_area_2_copy, :practice_area_2_link, :practice_area_3_image, :practice_area_3_title, :practice_area_3_copy, :practice_area_3_link, :stratum_2_image, :stratum_2_title, :stratum_2_copy, :stratum_2_cta, :stratum_2_link
	mount_uploader :hero_image, HeroImageUploader
	mount_uploader :practice_area_1_image, PracticeAreaImageUploader
	mount_uploader :practice_area_2_image, PracticeAreaImageUploader
	mount_uploader :practice_area_3_image, PracticeAreaImageUploader
	mount_uploader :stratum_1_image, StratumImageUploader
	mount_uploader :stratum_2_image, StratumImageUploader

end