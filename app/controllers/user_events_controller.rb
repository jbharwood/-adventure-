class UserEventsController < ApplicationController
  def new
    @user_event = UserEvent.new
  end

  def create
    @user_event = UserEvent.create(user_event_params)
    session[:user_id] = @user.id
    redirect_to @user
  end
end
