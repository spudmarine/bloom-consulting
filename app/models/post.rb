class Post < ActiveRecord::Base

  default_scope -> { order('created_at desc') }

  def previous_post
    self.class.first(:conditions => ["created_at < ?", created_at], :order => "created_at desc")
  end

  def next_post
    self.class.last(:conditions => ["created_at > ?", created_at], :order => "created_at asc")
  end

end
