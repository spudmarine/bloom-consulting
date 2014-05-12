class Employee < ActiveRecord::Base
	mount_uploader :employee_image, EmployeeImageUploader
end
