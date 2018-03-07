# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "name", email: 'email', password: 'pass')
User.create(name: "name2", email: 'email2', password: 'pass')
User.create(name: "name2", email: 'email3', password: 'pass')

Language.create(lingua: "Spanish", code: "es")

Category.create(label: "Greetings")
Category.create(label: "Food")
Category.create(label: "Curse Words")
Category.create(label: "Health")
Category.create(label: "Weather")
Category.create(label: "Numbers")
Category.create(label: "Travel")

Deck.create(title: "Greetings", description: "How to talk to people", category_id: 1, user_id: 1, language_id: 1)
Deck.create(title: "Courtesy", description: "Be kind, Rewind", category_id: 1, user_id: 1, language_id: 1 )
Deck.create(title: "Food", description: "Gotta eat sometime!", category_id: 2, user_id: 1, language_id: 1)
Deck.create(title: "Cuisine", description: "Stuff that goes on the fancy menu", category_id: 2, user_id: 1, language_id: 1)

Deck.create(title: "Greetings", description: "How to say hi", category_id: 1, user_id: 2, language_id: 1)
Deck.create(title: "Courtesy", description: "What not to say", category_id: 1, user_id: 2, language_id: 1 )
Deck.create(title: "Curse Words", description: "Colorful expressions", category_id: 3, user_id: 2, language_id: 1 )
Deck.create(title: "Health", description: "Body Stuffs", category_id: 4, user_id: 2, language_id: 1 )

Deck.create(title: "Food", description: "Spanish dishes", category_id: 2, user_id: 3, language_id: 1)
Deck.create(title: "Weather", description: "The stuff small talk is made of", category_id: 5, user_id: 3, language_id: 1)
Deck.create(title: "Numbers", description: "One ha ha ha! \n Two ha ha ha!", category_id: 6, user_id: 3, language_id: 1)
Deck.create(title: "Travel", description: "Trains, Planes and Automobiles", category_id: 7, user_id: 3, language_id: 1)


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

Card.create(original: "hello",target: "hola", language: "", deck_id: 5, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "bye",target: "adios", language: "", deck_id: 5, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "beach",target: "playa", language: "", deck_id: 5, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "dog",target: "perro", language: "", deck_id: 5, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "mister",target: "senior", language: "", deck_id: 5, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)

Card.create(original: "hello",target: "hola", language: "", deck_id: 6, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "bye",target: "adios", language: "", deck_id: 6, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "beach",target: "playa", language: "", deck_id: 6, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "dog",target: "perro", language: "", deck_id: 6, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "mister",target: "senior", language: "", deck_id: 6, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)

Card.create(original: "hello",target: "hola", language: "", deck_id: 7, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "bye",target: "adios", language: "", deck_id: 7, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "beach",target: "playa", language: "", deck_id: 7, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "dog",target: "perro", language: "", deck_id: 7, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "mister",target: "senior", language: "", deck_id: 7, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "hello",target: "hola", language: "", deck_id: 8, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "bye",target: "adios", language: "", deck_id: 8, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "beach",target: "playa", language: "", deck_id: 8, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "dog",target: "perro", language: "", deck_id: 8, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "mister",target: "senior", language: "", deck_id: 8, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)

Card.create(original: "hello",target: "hola", language: "", deck_id: 9, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "bye",target: "adios", language: "", deck_id: 9, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "beach",target: "playa", language: "", deck_id: 9, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "dog",target: "perro", language: "", deck_id: 9, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "mister",target: "senior", language: "", deck_id: 9, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)

Card.create(original: "hello",target: "hola", language: "", deck_id: 10, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "bye",target: "adios", language: "", deck_id: 10, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "beach",target: "playa", language: "", deck_id: 10, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "dog",target: "perro", language: "", deck_id: 10, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "mister",target: "senior", language: "", deck_id: 10, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)

Card.create(original: "hello",target: "hola", language: "", deck_id: 11, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "bye",target: "adios", language: "", deck_id: 11, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "beach",target: "playa", language: "", deck_id: 11, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "dog",target: "perro", language: "", deck_id: 11, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "mister",target: "senior", language: "", deck_id: 11, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)

Card.create(original: "hello",target: "hola", language: "", deck_id: 12, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "bye",target: "adios", language: "", deck_id: 12, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "beach",target: "playa", language: "", deck_id: 12, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "dog",target: "perro", language: "", deck_id: 12, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "mister",target: "senior", language: "", deck_id: 12, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
