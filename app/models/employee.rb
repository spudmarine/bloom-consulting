class Employee < ActiveRecord::Base
	attr_accessible :employee_image, :name, :title, :bio_intro, :bio, :linkedin, :twitter, :sort
	mount_uploader :employee_image, EmployeeImageUploader
	default_scope -> { order('sort ASC') }
end
