class Practicearea < ActiveRecord::Base
	attr_accessible :hero_image, :hero_title, :hero_copy, :pa1_title, :pa1_copy, :pa2_title, :pa2_copy, :pa3_title, :pa3_copy
	mount_uploader :hero_image, HeroImageUploader

end
