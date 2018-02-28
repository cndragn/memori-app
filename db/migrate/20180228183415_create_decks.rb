class CreateDecks < ActiveRecord::Migration[5.1]
  def change
    create_table :decks do |t|
      t.string :original
      t.string :target
      t.string :language

      t.timestamps
    end
  end
end
