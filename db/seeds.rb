# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Sivan", age: 200, borough: "Manhattan", username: "redhead101")
User.create(name: "Joseph", age: 200, borough: "Brooklyn", username: "brownhead40")

Location.create(name: "Murphys", address: "11 Broadway", borough: "Manhattan", latitude: "40.7039", longitude: "74.0125")

Event.create(title: "Happy Hour", description: "this is a happy hour with drinks and food", location_id: 1, event_type: "Happy Hour")
Event.create(title: "Post Code Challenge Drinks", description: "git this bread, we did it", location_id: 1, event_type: "Happy Hour")

Achievement.create(title: "Drink 5 beers!", description: "you MUST drink 5 beers....", points: 50, event_id: 1)
Achievement.create(title: "Order Nachos", description: "you must get these Nachos", points: 10, event_id: 1)

UserEvent.create(user_id: 1, event_id: 2, status: "Attending")
UserEvent.create(user_id: 2, event_id: 2, status: "Interested")
UserEvent.create(user_id: 1, event_id: 2, status: "Not Interested")

UserAchievement.create(user_id: 1, achievement_id: 1, status: "Complete")
UserAchievement.create(user_id: 1, achievement_id: 2, status: "Incomplete")
