class PostsController < ApplicationController
	before_action :authorize, only: [:create, :edit, :update]

	def new
	  @post = Post.new
	end

	def create
    @post = Post.new(params[:post])
    if @post.save
      flash[:success] = "Post created!"
      redirect_to @post
    else
      render root_url
    end
  end

	def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      redirect_to @post, notice: "post has been updated."
    else
      render "edit"
    end
  end

  def destroy
  	Post.find(params[:id]).destroy
  	redirect_to root_url
  end

end
