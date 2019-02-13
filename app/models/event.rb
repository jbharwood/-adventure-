class Event < ApplicationRecord
  has_many :user_events
  has_many :users, through: :user_events
  has_many :achievements
  belongs_to :location
  belongs_to :category
  validates :title, presence: true
  validates :description, presence: true

  def self.uniq_event_type_list
    arr = []
    self.all.each do |event|
      arr << event.event_type.to_s
    end
    arr.uniq
  end
end
