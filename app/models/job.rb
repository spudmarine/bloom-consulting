class Job < ActiveRecord::Base
	attr_accessible :title, :purpose, :responsibilities, :scope, :environmental, :education, :qualifications
end
