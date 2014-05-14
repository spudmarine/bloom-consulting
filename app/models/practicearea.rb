class Practicearea < ActiveRecord::Base
	mount_uploader :hero_image, HeroImageUploader

	validates :hero_title, :hero_copy, :pa1_title, :pa1_copy, :pa2_title, :pa2_copy, :pa3_title, :pa3_copy, presence: true
end
