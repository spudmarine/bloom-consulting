class UpdateJobsFields < ActiveRecord::Migration
  def change
  	remove_column :jobs, :purpose
  	remove_column :jobs, :scope
  	remove_column :jobs, :environmental
  	remove_column :jobs, :qualifications
  	add_column :jobs, :location, :string
  end
end
