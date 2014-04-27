class RemoveFacebookFromEmployees < ActiveRecord::Migration
  def change
  	remove_column :employees, :facebook
  end
end
