class AddPAs < ActiveRecord::Migration
  def change
  	remove_column :mains, :practice_area_4_image
  	remove_column :mains, :practice_area_4_title
  	remove_column :mains, :practice_area_4_copy

  	add_column :mains, :practice_area_4_image, :string
  	add_column :mains, :practice_area_4_title, :string
  	add_column :mains, :practice_area_4_copy, :text
  end
end
