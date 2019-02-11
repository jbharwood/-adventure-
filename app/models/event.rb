class Event < ApplicationRecord
  has_many :user_events
  has_many :users, through: :user_events
  has_many :achievements
  belongs_to :location
end
