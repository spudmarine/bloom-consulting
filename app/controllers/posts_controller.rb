class PostsController < ApplicationController

  layout 'blog'
  
  def index
  	@posts = Post.all
  end

  def show
  	@post = Post.find(params[:id])
    @prev = @post.previous_post
    @next = @post.next_post
  end

end
