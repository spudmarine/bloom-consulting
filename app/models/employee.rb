class Employee < ActiveRecord::Base
	attr_accessible :employee_image, :name, :title, :bio_intro, :bio, :linkedin, :twitter
	mount_uploader :employee_image, EmployeeImageUploader
end
