class PostsController < ApplicationController

  layout 'blog'
  
  def index
  	@posts = Post.all
  end

  def show
  	@post = Post.friendly.find(params[:id])
    if request.path != post_path(@post)
      redirect_to @post, status: :moved_permanently
    end
    @prev = @post.previous_post
    @next = @post.next_post
  end

end
