class AddPAs < ActiveRecord::Migration
  def change

  	add_column :mains, :practice_area_4_image, :string
  	add_column :mains, :practice_area_4_title, :string
  	add_column :mains, :practice_area_4_copy, :text
  end
end
