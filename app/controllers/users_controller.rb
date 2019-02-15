class UsersController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to @user
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    session[:user_id] = @user.id
    redirect_to @user
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = 'You deleted your account'
    redirect_to login_path
  end


    private

    def user_params
      params.require(:user).permit(:username, :password, :name, :age)
    end
  end
