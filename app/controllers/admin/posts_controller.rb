class Admin::PostsController < ApplicationController
	before_action :authorize

  layout 'admin'

	def new
	  @post = Post.new
	end

	def create
    @post = Post.new(post_params)

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
    @post = Post.friendly.find(params[:id])
  end

  def update
    @post = Post.friendly.find(params[:id])
    if @post.update_attributes(post_params)
      redirect_to admin_posts_url, notice: "post has been updated."
    else
      render "edit"
    end
  end

  def destroy
  	Post.friendly.find(params[:id]).destroy
  	redirect_to admin_posts_url
  end

  private

    def set_post
      @posts = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :author, :date, :body, :share_text)
    end

end
