class CreateAbouts < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
    	t.string :hero_image
    	t.string :hero_title
    	t.string :hero_copy
    	t.string :area1_title
    	t.text :area1_copy
    	t.string :area2_title
    	t.text :area2_copy
    	t.string :area3_title
    	t.text :area3_copy
      t.timestamps
    end
  end
end
