class Deck < ApplicationRecord
  belongs_to :category
  belongs_to :language

  belongs_to :user

  has_many :cards

end
