# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Guest", email: 'demo', password: 'demo')
User.create(name: "name2", email: 'email2', password: 'pass')


Language.create(lingua: "Spanish", code: "es")

Category.create(label: "Greetings")
Category.create(label: "Food")
Category.create(label: "Health")
Category.create(label: "Weather")
Category.create(label: "Numbers")
Category.create(label: "Travel")

Deck.create(title: "Greetings", description: "How to talk to people", category_id: 1, user_id: 1, language_id: 1)
Deck.create(title: "Courtesy", description: "Be kind, Rewind", category_id: 1, user_id: 1, language_id: 1 )
Deck.create(title: "Food", description: "Gotta eat sometime!", category_id: 2, user_id: 1, language_id: 1)
Deck.create(title: "Cuisine", description: "Stuff that goes on the fancy menu", category_id: 2, user_id: 1, language_id: 1)



Card.create(original: "hello",target: "hola", language: "", deck_id: 1, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "bye",target: "adios", language: "", deck_id: 1, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "beach",target: "playa", language: "", deck_id: 1, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "dog",target: "perro", language: "", deck_id: 1, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "mister",target: "senior", language: "", deck_id: 1, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)

Card.create(original: "hello",target: "hola", language: "", deck_id: 2, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "bye",target: "adios", language: "", deck_id: 2, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "beach",target: "playa", language: "", deck_id: 2, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "dog",target: "perro", language: "", deck_id: 2, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "mister",target: "senior", language: "", deck_id: 2, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)

Card.create(original: "hello",target: "hola", language: "", deck_id: 3, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "bye",target: "adios", language: "", deck_id: 3, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "beach",target: "playa", language: "", deck_id: 3, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "dog",target: "perro", language: "", deck_id: 3, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "mister",target: "senior", language: "", deck_id: 3, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)

Card.create(original: "hello",target: "hola", language: "", deck_id: 4, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "bye",target: "adios", language: "", deck_id: 4, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "beach",target: "playa", language: "", deck_id: 4, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "dog",target: "perro", language: "", deck_id: 4, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "mister",target: "senior", language: "", deck_id: 4, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)