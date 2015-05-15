class Main < ActiveRecord::Base
	
	mount_uploader :hero_image, HeroImageUploader
	mount_uploader :practice_area_1_image, PracticeAreaImageUploader
	mount_uploader :practice_area_2_image, PracticeAreaImageUploader
	mount_uploader :practice_area_3_image, PracticeAreaImageUploader
	mount_uploader :practice_area_4_image, PracticeAreaImageUploader
	mount_uploader :stratum_1_image, StratumImageUploader
	mount_uploader :stratum_2_image, StratumImageUploader

	validates :hero_title, :practice_area_1_image, :practice_area_1_title, :practice_area_1_copy, :practice_area_2_title, :practice_area_2_copy, :practice_area_3_title, :practice_area_3_copy, presence: true
end