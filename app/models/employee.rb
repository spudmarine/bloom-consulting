class Employee < ActiveRecord::Base
	mount_uploader :employee_image, EmployeeImageUploader
	default_scope -> { order('sortorder ASC') }
end
