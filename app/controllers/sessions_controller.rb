class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new
    render :new
  end

  def create #handles the POST request to /login
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to @user
    else
      flash[:notice] = 'Invalid username or password'
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = 'u logged out'
    redirect_to login_path
  end
end