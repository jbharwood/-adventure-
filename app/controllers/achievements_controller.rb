class AchievementsController < ApplicationController
  def show
    @achievement = Achievement.find(params[:id])
  end
end
