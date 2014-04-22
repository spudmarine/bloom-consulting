class EditColumnCareers < ActiveRecord::Migration
  def change
  	add_column :careers, :intro_copy, :text
  	change_column :careers, :intro_title, :string
  end
end
