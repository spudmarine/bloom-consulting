class Main < ActiveRecord::Base
	
	mount_uploader :hero_image, HeroImageUploader

	validates :hero_title, presence: true
end