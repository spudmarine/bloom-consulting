class Carousel < ActiveRecord::Base
	attr_accessible :carousel_image, :title, :culture, :overview, :consulting, :pm, :bi, :recruiting
	mount_uploader :carousel_image, CarouselImageUploader

end
