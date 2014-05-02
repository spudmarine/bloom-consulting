class AddColumnPracticeares < ActiveRecord::Migration
  def change

  	add_column :practiceareas, :bifocus_title, :string
  	add_column :practiceareas, :bifocus_copy, :text
  	
  end
end
