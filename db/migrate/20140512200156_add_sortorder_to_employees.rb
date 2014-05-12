class AddSortorderToEmployees < ActiveRecord::Migration
  def change
  	add_column :employees, :sortorder, :integer
  	remove_column :employees, :sort
  end
end
