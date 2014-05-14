class JobsController < ApplicationController

  def index
  end

  def show
    @job = Job.friendly.find(params[:id])
    if request.path != job_path(@job)
    	redirect_to @job, status: :moved_permanently
    end
  end
end
