class Carousel < ActiveRecord::Base
	mount_uploader :carousel_image, CarouselImageUploader

end
