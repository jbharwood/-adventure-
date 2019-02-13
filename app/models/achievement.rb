class Achievement < ApplicationRecord
  belongs_to :category
  has_many :user_achievements
  has_many :users, through: :user_achievements
end
