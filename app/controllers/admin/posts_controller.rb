class Admin::PostsController < ApplicationController
	before_action :authorize

  layout 'admin'

	def new
	  @post = Post.new
	end

	def create
    @post = Post.new(params[:post])

    respond_to do |format|
      if @post.save
        format.html { redirect_to admin_posts_url,
          notice: 'Blog Post successfully created' }
        format.json { render json: @post,
          status: :created,
          location: [:admin,@post] }
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors,
          status: :unprocessable_entity }
      end
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
