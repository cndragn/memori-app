# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "name", email: 'email', password: 'pass')

Category.create(label: "Greetings")
Category.create(label: "Food")

Deck.create(language: "Spanish", title: "Greetings", description: "How to talk to people", category_id: 1, user_id: 1)
Deck.create(language: "Spanish", title: "Courtesy", description: "Be kind, Rewind", category_id: 1, user_id: 1)
Deck.create(language: "Spanish", title: "Food", description: "Gotta eat sometime!", category_id: 2, user_id: 1)
Deck.create(language: "Spanish", title: "Cuisine", description: "Stuff that goes on the fancy menu", category_id: 2, user_id: 1)
