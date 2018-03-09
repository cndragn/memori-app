class User < ApplicationRecord
  has_secure_password
  has_many :decks
  # has_many :decks, through: :favorite
  has_many :scores
  has_many :cards, through: :score
end
