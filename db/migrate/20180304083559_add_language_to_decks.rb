class AddLanguageToDecks < ActiveRecord::Migration[5.1]
  def change
    add_reference :decks, :language, foreign_key: true
  end
end
