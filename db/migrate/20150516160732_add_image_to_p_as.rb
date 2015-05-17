class AddImageToPAs < ActiveRecord::Migration
  def change
  	add_column :practiceareas, :pa1_image, :string
  	add_column :practiceareas, :pa2_image, :string
  	add_column :practiceareas, :pa3_image, :string
  	add_column :practiceareas, :pa4_image, :string
  end
end
