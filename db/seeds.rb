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
Deck.create(title: "Travel", description: "Places to go, Things to see!", category_id: 2, user_id: 1, language_id: 1)



Card.create(original: "Hello",target: "Hola", language: "", deck_id: 1, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "Bye",target: "Adios", language: "", deck_id: 1, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "Good morning",target: "Buenos días", language: "", deck_id: 1, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "Good evening",target: "Buenas noches", language: "", deck_id: 1, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "How are you",target: "Cómo estás", language: "", deck_id: 1, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)

Card.create(original: "Thank you",target: "Gracias", language: "", deck_id: 2, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "Please",target: "Por favor", language: "", deck_id: 2, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "Pardon me",target: "Perdón", language: "", deck_id: 2, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "May I",target: "Puedo", language: "", deck_id: 2, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)

Card.create(original: "Coffee",target: "Café", language: "", deck_id: 3, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "Beer",target: "Cerveza", language: "", deck_id: 3, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "Bread",target: "Pan", language: "", deck_id: 3, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "Cheese",target: "Queso", language: "", deck_id: 3, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "Ice Cream",target: "Helado", language: "", deck_id: 3, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)

Card.create(original: "Passport",target: "Pasaporte", language: "", deck_id: 4, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "Airplane",target: "Avión", language: "", deck_id: 4, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "Directions",target: "Direcciones", language: "", deck_id: 4, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "Luggage",target: "Equipaje", language: "", deck_id: 4, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)
Card.create(original: "Reservation",target: "Reserva", language: "", deck_id: 4, language_id: 1, level: 0, correct: 0, wrong: 0, review: 0)