class Achievement < ApplicationRecord
  belongs_to :event
  has_many :user_achievements
  has_many :users, through: :user_achievements
end
