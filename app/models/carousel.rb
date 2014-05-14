class Carousel < ActiveRecord::Base
	mount_uploader :carousel_image, CarouselImageUploader

	validates :carousel_image, presence: true

end
