class Post < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title, use: [:slugged, :history]
	
	validates :date, :title, :author, :body, presence: true

end
