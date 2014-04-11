class Admin::UsersController < ApplicationController

	before_action :authorize

  def index
  	@users = User.all
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])

  	respond_to do |format|
  		if @user.save
  			format.html { redirect_to admin_users_url, notice: 'User was successfully created.' }
  			format.json {render json: @user, status: :created, location: [:admin,@user] }
  		else
  			format.html { render action: "new" }
  			format.json { render json: @user.errors, status: :unprocessable_entity }
  		end
  	end
  end

  def edit
  	@user = User.find(params[:id])
  end


  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to admin_path, notice: "User has been updated."
    else
      render "edit"
    end
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to admin_path
  end

end
