class About < ActiveRecord::Base
	mount_uploader :hero_image, HeroImageUploader

	validates :hero_title, :hero_copy, :area1_title, :area1_copy, :area2_title, :area2_copy, presence: true
end
