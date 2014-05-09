class Admin::CarouselsController < ApplicationController
  before_action :authorize

  layout 'admin'

def new
    @carousel = Carousel.new
  end

  def create
    @carousel = Carousel.new(carousel_params)

    respond_to do |format|
      if @carousel.save
        format.html { redirect_to admin_carousels_url,
          notice: 'Blog Carousel successfully created' }
        format.json { render json: @carousel,
          status: :created,
          location: [:admin,@carousel] }
      else
        format.html { render action: "new" }
        format.json { render json: @carousel.errors,
          status: :unprocessable_entity }
      end
    end
  end

  def index
    @carousels = Carousel.all
  end

  def show
    @carousel = Carousel.find(params[:id])
  end

  def edit
    @carousel = Carousel.find(params[:id])
  end

  def update
    @carousel = Carousel.find(params[:id])
    if @carousel.update_attributes(carousel_params)
      redirect_to admin_carousels_url, notice: "carousel has been updated."
    else
      render "edit"
    end
  end

  def destroy
    Carousel.find(params[:id]).destroy
    redirect_to admin_carousels_url
  end
 
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carousel
      @carousel = Carousel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carousel_params
      params.require(:carousel).permit(:carousel_image, :title, :culture, :overview, :consulting, :pm, :bi, :recruiting)
    end
  
end
