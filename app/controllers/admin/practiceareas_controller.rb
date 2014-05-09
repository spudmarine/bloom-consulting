class Admin::PracticeareasController < ApplicationController
  before_action :set_practicearea, only: [:show, :edit, :update, :destroy]
  before_action :authorize

  layout 'admin'
  
  # GET /practiceareas
  # GET /practiceareas.json
  def index
    @practiceareas = Practicearea.all
  end

  # GET /practiceareas/1
  # GET /practiceareas/1.json
  def show
    @insights = Insights.all
  end

  # GET /practiceareas/1/edit
  def edit
  end

  # PATCH/PUT /practiceareas/1
  # PATCH/PUT /practiceareas/1.json
  def update
    respond_to do |format|
      if @practicearea.update(practicearea_params)
        format.html { redirect_to admin_practiceareas_path, notice: 'Practicearea was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @practicearea.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_practicearea
      @practicearea = Practicearea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def practicearea_params
      params.require(:practicearea).permit(:hero_image, :hero_title, :hero_copy, :pa1_title, :pa1_copy, :pa2_title, :pa2_copy, :pa3_title, :pa3_copy, :marketing_services_title, :marketing_services_copy, :sales_services_title, :sales_services_copy, :channel_services_title, :channel_services_copy, :bi_services_title, :bi_services_copy, :pm_process_groups_title, :pm_process_groups_copy, :pm_knowledge_title, :pm_knowledge_copy, :pm_deliverables_title, :pm_deliverables_copy, :bifocus_title, :bifocus_copy)
    end
end
