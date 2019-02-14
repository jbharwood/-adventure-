class EventsController < ApplicationController

  def index
    @events = Event.all
    if params[:category] && params[:category][:id]
      @events = Event.where(category_id: params[:category][:id])
    else
      @events = Event.all
    end
  end

  def show
    @event = Event.find(params[:id])
    @achievement = Achievement.new
    if params[:event] && params[:event][:user_events]
      if params[:event][:user_events] == "Attending"
        @userevent = UserEvent.create(user_id: current_user.id, event_id: @event.id, status: "Attending")
      else
        @userevent = UserEvent.create(user_id: current_user.id, event_id: @event.id, status: "Interested")
      end
    end
  end

  def achieved
    @achievement = Achievement.find_by(id: params[:achievement][:id])
    if params[:achievement] && params[:achievement][:id]
      if params[:achievement][:id] != ""
        params[:achievement][:id].each do |aid|
          if aid != ""
            @userachievement = UserAchievement.create(user_id: current_user.id, achievement_id: aid, status: "Complete")
          end
        end
        if @userachievement.valid?
          flash[:notice]
          redirect_to event_path(params[:event][:id])
        end
      end
    end
  end

  def new
    @event = Event.new
    @location = @event.location
  end

  def create
    byebug
    @event = Event.new(event_params)
    if params[:event] && params[:event][:location_id] != ""
      @event.location = Location.find_by(id: params[:event][:location_id])
    else
      @event.location = Location.create(name: params[:name], address: params[:address], borough: params[:borough])
    end
      byebug
    if params[:event] && params[:event][:category_id] != ""
      @event.category = Category.find_by(id: params[:event][:category_id])
    else
      @event.category = Category.create(name: params[:type])
    end
      byebug
    if @event.valid?
      @event.save
      redirect_to @event
    else
      flash[:errors] = @event.errors.full_messages
      redirect_to new_event_path
    end
  end

  def update
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to @event
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :location_id, :event_type, :category_id, :user_events, :user_achievements, :category, :event_id)
  end

end
