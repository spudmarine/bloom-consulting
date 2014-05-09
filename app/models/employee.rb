class Employee < ActiveRecord::Base
	mount_uploader :employee_image, EmployeeImageUploader
	default_scope -> { order('sort ASC') }
end
