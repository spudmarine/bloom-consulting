class Practicearea < ActiveRecord::Base
	mount_uploader :hero_image, HeroImageUploader

end
