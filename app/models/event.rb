class Event < ActiveRecord::Base
	attr_accessible :location, :description, :date, :link
end
