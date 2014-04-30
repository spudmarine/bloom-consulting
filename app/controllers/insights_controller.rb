class InsightsController < ApplicationController
  before_action :set_insight, only: [:show, :edit, :update, :destroy]

  # GET /insights
  # GET /insights.json
  def index
    @insights = Insight.all
    @mains = Main.all
  end

  # GET /insights/1
  # GET /insights/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insight
      @insight = Insight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def insight_params
      params.require(:insight).permit(:title, :author, :blurb, :article)
    end
end
