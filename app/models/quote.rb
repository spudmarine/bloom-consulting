class Quote < ActiveRecord::Base
  default_scope -> { order('sortorder ASC') }

	validates :quote, :credit, presence: true

end
