class Admin::AboutsController < ApplicationController
  before_action :set_about, only: [:show, :edit, :update, :destroy]
  before_action :authorize

  layout 'admin'
  
  # GET /abouts
  # GET /abouts.json
  def index
    @abouts = About.all
  end

  # GET /abouts/1
  # GET /abouts/1.json
  def show
  end

  # GET /abouts/1/edit
  def edit
  end

  # PATCH/PUT /abouts/1
  # PATCH/PUT /abouts/1.json
  def update
    respond_to do |format|
      if @about.update(about_params)
        format.html { redirect_to admin_abouts_path, notice: 'About was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @about.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_about
      @about = About.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def about_params
      params[:about]
    end
end
