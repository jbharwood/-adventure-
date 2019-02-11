class User < ApplicationRecord
  has_many :user_events
  has_many :events, through: :user_events
  has_many :user_achievements
  has_many :achievements, through: :user_achievements


  def my_achievements
    sum = 0
    self.achievements.uniq.each do |achievement|
      sum += achievement.points
    end
    sum
  end
end
