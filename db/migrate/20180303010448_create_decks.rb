class CreateDecks < ActiveRecord::Migration[5.1]
  def change
    create_table :decks do |t|
      t.string :language
      t.string :title
      t.string :description
      t.belongs_to :category, foreign_key: true

      t.timestamps
    end
  end
end
