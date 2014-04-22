class Admin::JobsController < ApplicationController
  before_action :authorize

def new
    @job = Job.new
  end

  def create
    @job = Job.new(params[:job])

    respond_to do |format|
      if @job.save
        format.html { redirect_to admin_jobs_url,
          notice: 'Blog Job successfully created' }
        format.json { render json: @job,
          status: :created,
          location: [:admin,@job] }
      else
        format.html { render action: "new" }
        format.json { render json: @job.errors,
          status: :unprocessable_entity }
      end
    end
  end

  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    if @job.update_attributes(params[:job])
      redirect_to admin_jobs_url, notice: "job has been updated."
    else
      render "edit"
    end
  end

  def destroy
    Job.find(params[:id]).destroy
    redirect_to admin_jobs_url
  end
end
