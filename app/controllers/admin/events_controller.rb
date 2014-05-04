class Admin::EventsController < ApplicationController
  before_action :authorize

def new
    @event = Event.new
  end

  def create
    @event = Event.new(params[:event])

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
    if @event.update_attributes(params[:event])
      redirect_to admin_events_url, notice: "event has been updated."
    else
      render "edit"
    end
  end

  def destroy
    Event.find(params[:id]).destroy
    redirect_to admin_events_url
  end
end
