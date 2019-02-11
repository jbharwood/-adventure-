# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Sivan", age: 200, borough: "Manhattan")

Location.create(name: "Murphys", address: "11 Broadway", borough: "Manhattan")

Event.create(title: "Happy Hour", description: "this is a happy hour with drinks and food", location_id: 1)

Achievement.create(title: "Drink 5 beers!", description: "you MUST drink 5 beers....", points: 50, event_id: 1)

UserEvent.create(user_id: 1, event_id: 1)
