class About < ActiveRecord::Base
	attr_accessible :hero_image, :hero_title, :hero_copy, :area1_title, :area1_copy, :area2_title, :area2_copy, :area3_title, :area3_copy
	mount_uploader :hero_image, HeroImageUploader

end
