class JobsController < ApplicationController
  def new
  end

  def create
  end

  def edit
  end

  def destroy
  end

  def index
  end

  def show
    @job = Job.find(params[:id])
  end
end
