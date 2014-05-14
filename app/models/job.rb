class Job < ActiveRecord::Base

	validates :title, :location, :description, presence: true

end