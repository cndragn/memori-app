class Card < ApplicationRecord
  Card belongs_to :deck
  Card has_many :scores
  Card has_many :users, through: :score
end
