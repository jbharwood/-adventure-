# README

# //ADVENTURE: DESCRIPTION
- //ADVENTURE is a web application that allows you, as a user, to unlock achievements by attending a variety of different events. Each event has a number of achievements based on the category of that event. You can keep track of all of the achievements you have unlocked on your profile and see how many points you have earned.

# INSTALL INSTRUCTIONS
- 

# CONTRIBUTORS GUIDE

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

Features to build:
- finish new event form
  - new location and new category
  - create achievements
- add users to events
- add comment on event pages
- share feature
