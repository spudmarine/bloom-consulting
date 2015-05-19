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
      params.require(:main).permit(:hero_image, :hero_title)
    end
end
