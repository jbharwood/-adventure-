class EventsController < ApplicationController

  def index
    @events = Event.all
    if params["type"] == "1"
      @events = Event.where(category_id: "1")
    elsif params["type"] == "2"
      @events = Event.where(category_id: "2")
    elsif params["type"] == "3"
      @events = Event.where(category_id: "3")
    else
      @events = Event.all
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
    @location = @event.location
  end

  def create
    @event = Event.new(event_params)
    if @event.valid?
      if params[:name].empty?
        @event.location = Location.create(name: params[:name], address: params[:address], borough: params[:borough])
      end
      if params[:type].empty?
        @event.category = Category.create(name: params[:type])
      end
      if params[:achievement].empty?
        @event.achievements = Achievement.create(title: params[:title], description: params[:description], points: params[:points])
      end
      @event.save
      byebug

      redirect_to @event
    else
      flash[:errors] = @event.errors.full_messages
      redirect_to new_event_path
    end

  end

  def update
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :location_id, :event_type, :category_id)
  end

end
