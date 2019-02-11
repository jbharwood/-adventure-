class User < ApplicationRecord
  has_many :user_events
  has_many :events, through: :user_events
  has_many :achievements, through: :events


  def my_achievements
    sum = 0
    self.achievements.uniq.each do |achievement|
      sum += achievement.points
    end
    sum
  end
end
