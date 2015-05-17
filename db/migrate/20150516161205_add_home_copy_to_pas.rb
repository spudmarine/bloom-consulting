class AddHomeCopyToPas < ActiveRecord::Migration
  def change
  	add_column :practiceareas, :pa1_home_copy, :text
  	add_column :practiceareas, :pa2_home_copy, :text
  	add_column :practiceareas, :pa3_home_copy, :text
  	add_column :practiceareas, :pa4_home_copy, :text
  end
end
