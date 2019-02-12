# README
* USER
  - has_many :user_events
  - has_many :events, through: :user_events
  - has_many :achievements, through: :events

* EVENTS
  - has_many :user_events
  - has_many :users, through: user_events
  - has_many :achievements
  - belongs_to :location

* USER EVENTS
  - belongs_to :user
  - belongs_to :event

* LOCATIONS
  - has_many :events

* ACHIEVEMENTS
  - belongs_to :events
  - has_many :users, through: :events

* USER ACHIEVEMENTS
  -  belongs_to :user
  - belongs_to :achievement
