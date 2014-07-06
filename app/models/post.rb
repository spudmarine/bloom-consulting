class Post < ActiveRecord::Base
  has_many :images
  default_scope -> { order('created_at desc') }

  def previous_post
    self.class.first(:conditions => ["created_at < ?", created_at], :order => "created_at desc")
  end

  def next_post
    self.class.last(:conditions => ["created_at > ?", created_at], :order => "created_at asc")
  end

	extend FriendlyId
	friendly_id :title, use: [:slugged, :history]
	
	validates :title, :author, :body, presence: true

end
