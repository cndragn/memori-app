class User < ApplicationRecord
  has_secure_password
  User has_many :decks
  User has_many :decks, through: :favorite
  User has_many :scores
  User has_many :cards, through: :score
end
