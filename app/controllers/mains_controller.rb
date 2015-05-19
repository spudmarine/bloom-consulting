class MainsController < ApplicationController
  before_action :set_main, only: [:show, :edit, :update, :destroy]

  def index
    @mains = Main.all
    @practiceareas = Practicearea.all
  end

  def show
    @employees = Employee.all
    @quotes = Quote.all
    @practiceareas = Practicearea.all
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
