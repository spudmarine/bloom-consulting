class Admin::InsightsController < ApplicationController
  before_action :set_insight, only: [:show, :edit, :update, :destroy]

  layout 'admin'

  # GET /insights
  # GET /insights.json
  def index
    @insights = Insight.all
  end

  # GET /insights/1
  # GET /insights/1.json
  def show
  end

  # GET /insights/new
  def new
    @insight = Insight.new
  end

  # GET /insights/1/edit
  def edit
  end

  # POST /insights
  # POST /insights.json
  def create
    @insight = Insight.new(insight_params)

    respond_to do |format|
      if @insight.save
        format.html { redirect_to admin_insights_url, notice: 'Insight was successfully created.' }
        format.json { render action: 'show', status: :created, location: @insight }
      else
        format.html { render action: 'new' }
        format.json { render json: @insight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /insights/1
  # PATCH/PUT /insights/1.json
  def update
    respond_to do |format|
      if @insight.update(insight_params)
        format.html { redirect_to admin_insights_url, notice: 'Insight was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @insight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insights/1
  # DELETE /insights/1.json
  def destroy
    @insight.destroy
    respond_to do |format|
      format.html { redirect_to admin_insights_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insight
      @insight = Insight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def insight_params
      params.require(:insight).permit(:title, :author, :blurb, :article, :projectmanagement, :businessconsulting, :businessintelligence)
    end
end
