class Team < ActiveRecord::Base

	validates :intro_title, :intro_copy, presence: true

end
