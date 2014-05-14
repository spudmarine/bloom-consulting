class Job < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title, use: [:slugged, :history]

	validates :title, :location, :description, presence: true

end