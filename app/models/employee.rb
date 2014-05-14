class Employee < ActiveRecord::Base
	mount_uploader :employee_image, EmployeeImageUploader
	default_scope -> { order('sortorder ASC') }

	validates :employee_image, :name, :title, :bio, :bio_intro, presence: true
end
