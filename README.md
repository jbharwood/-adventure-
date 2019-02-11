# README
* USER
  -has_many :user_events
  -has_many :events, through: :user_events
  -has_many :achievements, through: :events

  -Show -- profile
    achievements you accomplished
  -Edit -- edit profile
  -Create -- login

* EVENTS
  -has_many :user_events
  -has_many :users, through: user_events
  -has_many :achievements
  -belongs_to :location

  -Show -- Event page
    users attending
    achievements
    location (on static map)
  -index -- filter by event type

* USER EVENTS
  -belongs_to :user
  -belongs_to :event

* LOCATIONS
  -has_many :events

* ACHIEVEMENTS
  -belongs_to :events
  -has_many :users, through: :events
