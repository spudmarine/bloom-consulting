class About < ActiveRecord::Base
	mount_uploader :hero_image, HeroImageUploader

end
