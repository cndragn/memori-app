class CreateDeckUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :deck_users do |t|
      t.integer :deck_id
      t.integer :user_id

      t.timestamps
    end
  end
end
