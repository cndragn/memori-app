class Deck < ApplicationRecord
  Deck belongs_to :category
  Deck belongs_to :user
  Deck has_many :cards
  Deck has_many :users, through: :favorite
end
