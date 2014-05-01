class SuccessesController < ApplicationController
  before_action :set_success, only: [:show, :edit, :update, :destroy]

  # GET /successes
  # GET /successes.json
  def index
    @successes = Success.all
    @mains = Main.all
  end

  # GET /successes/1
  # GET /successes/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_success
      @success = Success.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def success_params
      params.require(:success).permit(:title, :author, :blurb, :article)
    end
end
