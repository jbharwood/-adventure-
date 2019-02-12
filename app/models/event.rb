class Event < ApplicationRecord
  has_many :user_events
  has_many :users, through: :user_events
  has_many :achievements
  belongs_to :location

  def self.uniq_event_type_list
    arr = []
    self.all.each do |event|
      arr << event.event_type
    end
    arr.uniq
  end
end
