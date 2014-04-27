class AddIntroToEmployee < ActiveRecord::Migration
  def change
  	add_column :employees, :bio_intro, :text
  end
end
