class Admin::EventsController < ApplicationController
  before_action :authorize

  layout 'admin'

def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to admin_events_url,
          notice: 'Blog Event successfully created' }
        format.json { render json: @event,
          status: :created,
          location: [:admin,@event] }
      else
        format.html { render action: "new" }
        format.json { render json: @event.errors,
          status: :unprocessable_entity }
      end
    end
  end

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(event_params)
      redirect_to admin_events_url, notice: "event has been updated."
    else
      render "edit"
    end
  end

  def destroy
    Event.find(params[:id]).destroy
    redirect_to admin_events_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:location, :description, :date, :link)
    end 

end
