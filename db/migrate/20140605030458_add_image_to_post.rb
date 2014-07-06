class AddImageToPost < ActiveRecord::Migration
  def change
  	add_column :posts, :blog_image, :string
  end
end
