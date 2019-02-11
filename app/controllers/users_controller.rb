class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update]
  def index
    @users = User.all
  end

  def show
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to @user
  end

  private

  def user_params
    params.require(:user).permit(:name, :age, :borough)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
