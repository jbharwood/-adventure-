# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Sivan", age: 200, borough: "Manhattan", username: "redhead101")
User.create(name: "Joseph", age: 200, borough: "Brooklyn", username: "brownhead40")
20.times do
  User.create(name: Faker::Name.name, age: [*1..100].sample, borough: ["Manhattan", "Bronx", "Brooklyn", "Staten Island", "Queens"].sample, username: Faker::Superhero.name)
end


Location.create(name: "Murphy's Tavern", address: "6 Stone St, New York, NY 10004", borough: "Manhattan", latitude: "40.7039", longitude: "74.0125")
Location.create(name: "Escape The Room NYC", address: "24 W 25th St floor 8, New York, NY 10010", borough: "Manhattan", latitude: "40.7433", longitude: "73.9903")
Location.create(name: "Madison Square Park", address: "11 Madison Ave, New York, NY 10010", borough: "Manhattan", latitude: "40.7420", longitude: "73.9876")
Location.create(name: "Bar 718", address: "718 5th Ave, Brooklyn, NY 11215", borough: "Brooklyn", latitude: "40.6606", longitude: "73.9946")
Location.create(name: "Fort Greene Park", address: "Washington Park St, Brooklyn, NY 11205", borough: "Brooklyn", latitude: "40.6914", longitude: "73.9749")
Location.create(name: "Escape Room NYC: Mission Escape Games", address: "265 W 37th St Suite 802A, New York, NY 10018", borough: "Manhattan", latitude: "40.7540", longitude: "73.9913")

Category.create(name: "Happy Hour")
Category.create(name: "Escape Room")
Category.create(name: "Park")

Event.create(title: "Happy Hour", description: "this is a happy hour with drinks and food", location_id: 1, event_type: "Happy Hour", category_id: 1)
Event.create(title: "Post Code Challenge Drinks", description: "git this bread, we did it", location_id: 1, event_type: "Happy Hour", category_id: 1)
Event.create(title: "Mod 2 Escape Room", description: "we better escape...", location_id: 2, event_type: "Escape Room", category_id: 2)
Event.create(title: "Yoga in The Park", description: "ohhmmmmmmmmmmmm", location_id: 3, event_type: "Park", category_id: 3)
Event.create(title: "Trying Cool Drinks", description: "trying all the cool drinks on the menu", location_id: 4, event_type: "Happy Hour", category_id: 1)
Event.create(title: "Picnic", description: "eating food on the grass", location_id: 5, event_type: "Park", category_id: 3)
Event.create(title: "Who Escapes The Fastest?", description: "fastest person to escape wins", location_id: 6, event_type: "Escape Room", category_id: 2)


Achievement.create(title: "Drink 5 beers!", description: "you MUST drink 5 beers....", points: 50, event_id: 1, category_id: 1)
Achievement.create(title: "Order Nachos", description: "you must get these Nachos", points: 10, event_id: 1, category_id: 1)
Achievement.create(title: "Fastest Time", description: "fastest time wins points", points: 100, event_id: 3, category_id: 2)

UserEvent.create(user_id: 1, event_id: 2, status: "Attending")
UserEvent.create(user_id: 2, event_id: 2, status: "Interested")
UserEvent.create(user_id: 1, event_id: 2, status: "Not Interested")

UserAchievement.create(user_id: 1, achievement_id: 1, status: "Complete")
UserAchievement.create(user_id: 1, achievement_id: 2, status: "Incomplete")
