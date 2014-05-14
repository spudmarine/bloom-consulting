class Quote < ActiveRecord::Base

	validates :quote, :credit, presence: true
end
