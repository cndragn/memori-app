class Deck < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :cards
  has_many :users, through: :favorite
end
