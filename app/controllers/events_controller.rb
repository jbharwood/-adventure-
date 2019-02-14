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
      array = []
      if params[:user_achievements] && params[:user_achievements][:status]
        @achievement = @event.category.achievements.each do |achievement|
          array << {id: achievement.id, title: achievement.title, description: achievement.description, points: achievement.points, event_id: @event.id, category_id: @event.category.id}
        end
        array.find do |item|
          item[:status] == "Complete"
            byebug
            @user_achievements = UserAchievement.create(user_id: current_user.id, achievement_id: array[0][:id], status: params[:user_achievements][:status])
            flash[:notice] = "Consider it Achieved"
        end
      end
      if params[:user_events] && params[:user_events][:status]
        @userevent = UserEvent.create(user_id: current_user.id, event_id: @event.id, status: params[:user_events][:status])
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
