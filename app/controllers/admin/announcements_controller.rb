class Admin::AnnouncementsController < ApplicationController
  before_action :authorize

  layout 'admin'

  def new
    @announcement = Announcement.new
  end

  def create
    @announcement = Announcement.new(announcement_params)

    respond_to do |format|
      if @announcement.save
        format.html { redirect_to admin_announcements_url,
          notice: 'Announcement successfully created' }
        format.json { render json: @announcement,
          status: :created,
          location: [:admin,@announcement] }
      else
        format.html { render action: "new" }
        format.json { render json: @announcement.errors,
          status: :unprocessable_entity }
      end
    end
  end

  def index
    @announcements = Announcement.all
  end

  def show
    @announcement = Announcement.find(params[:id])
  end

  def edit
    @announcement = Announcement.find(params[:id])
  end

  def update
    @announcement = Announcement.find(params[:id])
    if @announcement.update_attributes(announcement_params)
      redirect_to admin_url, notice: "Announcement has been updated."
    else
      render "edit"
    end
  end

  def destroy
    Announcement.find(params[:id]).destroy
    redirect_to admin_announcements_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_announcement
      @announcement = Announcement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def announcement_params
      params.require(:announcement).permit(:id, :announcement_1_image, :announcement_1_title, :announcement_1_copy, :announcement_1_cta, :announcement_1_link, :announcement_2_image, :announcement_2_title, :announcement_2_copy, :announcement_2_cta, :announcement_2_link)
    end
  
end