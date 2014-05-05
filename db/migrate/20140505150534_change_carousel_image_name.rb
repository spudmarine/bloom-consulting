class ChangeCarouselImageName < ActiveRecord::Migration
  def change
  	remove_column :carousels, :image
  	add_column :carousels, :carousel_image, :string
  end
end
