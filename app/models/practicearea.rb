class Practicearea < ActiveRecord::Base
	mount_uploader :hero_image, HeroImageUploader
	mount_uploader :pa1_image, PracticeAreaImageUploader
	mount_uploader :pa2_image, PracticeAreaImageUploader
	mount_uploader :pa3_image, PracticeAreaImageUploader
	mount_uploader :pa4_image, PracticeAreaImageUploader

	validates :hero_title, :hero_copy, :pa1_title, :pa1_copy, :pa1_image, :pa1_home_copy, :pa2_title, :pa2_copy, :pa2_image, :pa2_home_copy, :pa3_title, :pa3_copy, :pa3_image, :pa3_home_copy, :pa4_title, :pa4_copy, :pa4_image, :pa4_home_copy, presence: true
end
