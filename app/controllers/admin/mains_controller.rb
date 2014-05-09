class Admin::MainsController < ApplicationController
  before_action :authorize

  layout 'admin'
  # GET /mains
  # GET /mains.json
  def index
    @mains = Main.all
  end

  # GET /mains/1
  # GET /mains/1.json
  def show
  end

 
  # GET /mains/1/edit
  def edit
    @main = Main.find(params[:id])
  end


  # PATCH/PUT /mains/1
  # PATCH/PUT /mains/1.json
  def update
    @main = Main.find(params[:id])
    if @main.update_attributes(main_params)
      redirect_to admin_url, notice: "Homepage has been updated."
    else
      render "edit"
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_main
      @main = Main.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def main_params
      params.require(:main).permit(:hero_image, :hero_title, :stratum_1_image, :stratum_1_title, :stratum_1_copy, :stratum_1_cta, :stratum_1_link, :practice_area_1_image, :practice_area_1_title, :practice_area_1_copy, :practice_area_1_link, :practice_area_2_image, :practice_area_2_title, :practice_area_2_copy, :practice_area_2_link, :practice_area_3_image, :practice_area_3_title, :practice_area_3_copy, :practice_area_3_link, :stratum_2_image, :stratum_2_title, :stratum_2_copy, :stratum_2_cta, :stratum_2_link)
    end
end
