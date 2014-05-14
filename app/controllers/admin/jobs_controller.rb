class Admin::JobsController < ApplicationController
  before_action :authorize

  layout 'admin'

def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)

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
    @job = Job.friendly.find(params[:id])
  end

  def update
    @job = Job.friendly.find(params[:id])
    if @job.update_attributes(job_params)
      redirect_to admin_jobs_url, notice: "job has been updated."
    else
      render "edit"
    end
  end

  def destroy
    Job.friendly.find(params[:id]).destroy
    redirect_to admin_jobs_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_params
      params.require(:job).permit(:title, :location, :description, :area1_title, :area1_copy, :area2_title, :area2_copy, :area3_title, :area3_copy, :area4_title, :area4_copy, :area5_title, :area5_copy, :area6_title, :area6_copy, :area7_title, :area7_copy)
    end
  
end