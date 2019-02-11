class Achievement < ApplicationRecord
  belongs_to :event
  has_many :users, through: :events
end
