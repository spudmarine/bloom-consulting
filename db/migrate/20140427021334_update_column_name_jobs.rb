class UpdateColumnNameJobs < ActiveRecord::Migration
  def change
  	remove_column :jobs, :education
  	add_column :jobs, :description, :text
  end
end
