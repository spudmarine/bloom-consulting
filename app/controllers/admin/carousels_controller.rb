class Admin::CarouselsController < ApplicationController
  before_action :authorize

  layout 'admin'

def new
    @carousel = Carousel.new
  end

  def create
    @carousel = Carousel.new(params[:carousel])

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
    if @carousel.update_attributes(params[:carousel])
      redirect_to admin_carousels_url, notice: "carousel has been updated."
    else
      render "edit"
    end
  end

  def destroy
    Carousel.find(params[:id]).destroy
    redirect_to admin_carousels_url
  end
end
