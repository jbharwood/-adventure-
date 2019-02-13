class AchievementsController < ApplicationController
  def index
    @achievements = Achievement.all
  end

  def show
    @achievement = Achievement.find(params[:id])
  end

  def new
    @achievement = Achievement.new
  end

  def create
    @achievement = Achievement.create(achievement_params)
    redirect_to @achievement
  end

  private

  def achievement_params
    params.require(:achievement).permit(:title, :description, :points, :event_id, :category_id)
  end
end
