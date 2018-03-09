class AddUserIdToDeck < ActiveRecord::Migration[5.1]
  def change
    add_column :decks, :user_id, :integer
  end
end
