class Job < ActiveRecord::Base
	attr_accessible :title, :location, :responsibilities
end