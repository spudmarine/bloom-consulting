class Event < ActiveRecord::Base

	validates :location, :date, :description, presence: true
end
