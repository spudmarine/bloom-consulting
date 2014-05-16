class PostsController < ApplicationController

  layout 'login'
  
  def index
  	@posts = Post.all
  end

  def show
  	@post = Post.friendly.find(params[:id])
  	if request.path != post_path(@post)
  		redirect_to @post, status: :moved_permanently
  	end
  end
end
