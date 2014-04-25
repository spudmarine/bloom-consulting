class Career < ActiveRecord::Base

	attr_accessible :hero_image, :hero_title, :hero_copy, :intro_title, :intro_copy, :cta_title, :cta_copy
	mount_uploader :hero_image, HeroImageUploader
	
end