class Admin::PracticeareasController < ApplicationController
  before_action :set_practicearea, only: [:show, :edit, :update, :destroy]

  # GET /practiceareas
  # GET /practiceareas.json
  def index
    @practiceareas = Practicearea.all
  end

  # GET /practiceareas/1
  # GET /practiceareas/1.json
  def show
  end

  # GET /practiceareas/new
  def new
    @practicearea = Practicearea.new
  end

  # GET /practiceareas/1/edit
  def edit
  end

  # POST /practiceareas
  # POST /practiceareas.json
  def create
    @practicearea = Practicearea.new(practicearea_params)

    respond_to do |format|
      if @practicearea.save
        format.html { redirect_to @practicearea, notice: 'Practicearea was successfully created.' }
        format.json { render action: 'show', status: :created, location: @practicearea }
      else
        format.html { render action: 'new' }
        format.json { render json: @practicearea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /practiceareas/1
  # PATCH/PUT /practiceareas/1.json
  def update
    respond_to do |format|
      if @practicearea.update(practicearea_params)
        format.html { redirect_to @practicearea, notice: 'Practicearea was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @practicearea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /practiceareas/1
  # DELETE /practiceareas/1.json
  def destroy
    @practicearea.destroy
    respond_to do |format|
      format.html { redirect_to practiceareas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_practicearea
      @practicearea = Practicearea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def practicearea_params
      params.require(:practicearea).permit(:hero_image, :hero_title, :hero_copy, :pa1_title, :pa1_copy, :pa2_title, :pa2_copy, :pa3_title, :pa3_copy)
    end
end
