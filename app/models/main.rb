class Main < ActiveRecord::Base
	
	mount_uploader :hero_image, HeroImageUploader
	mount_uploader :practice_area_1_image, PracticeAreaImageUploader
	mount_uploader :practice_area_2_image, PracticeAreaImageUploader
	mount_uploader :practice_area_3_image, PracticeAreaImageUploader
	mount_uploader :stratum_1_image, StratumImageUploader
	mount_uploader :stratum_2_image, StratumImageUploader

end