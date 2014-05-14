class Career < ActiveRecord::Base
	mount_uploader :hero_image, HeroImageUploader
	
	validates :hero_title, :hero_copy, :intro_title, :event_header, :cta_title, :cta_copy, presence: true
end
