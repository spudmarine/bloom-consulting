class Employee < ActiveRecord::Base
	attr_accessible :employee_image, :name, :title, :bio, :linkedin, :twitter, :facebook
	mount_uploader :employee_image, EmployeeImageUploader
end
