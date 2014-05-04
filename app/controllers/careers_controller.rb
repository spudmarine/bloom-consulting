class CareersController < ApplicationController
  before_action :set_career, only: [:show, :edit, :update, :destroy]

  # GET /careers
  # GET /careers.json
  def index
    @careers = Career.all
    @jobs = Job.all
    @mains = Main.all
    @events = Event.all
  end

  # GET /careers/1
  # GET /careers/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_career
      @career = Career.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def career_params
      params.require(:career).permit(:hero_image, :hero_title, :hero_copy, :intro_title, :intro_title, :cta_title, :cta_copy, :event_header, :event_info)
    end
end
