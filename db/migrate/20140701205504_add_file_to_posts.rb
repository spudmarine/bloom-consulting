class AddFileToPosts < ActiveRecord::Migration
  def change
  	add_attachment :posts, :file
  end
end
