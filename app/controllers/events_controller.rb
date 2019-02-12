class EventsController < ApplicationController

  def index
    @events = Event.all
    if params["type"] == "1"
      @events = Event.where(event_type: "Happy Hour")
    elsif params["type"] == "2"
      @events = Event.where(event_type: "Escape Room")
    else
      @events = Event.all
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_params)
    byebug
    redirect_to @event
  end

  def update
    byebug
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :location_id, :event_type)
  end

end
