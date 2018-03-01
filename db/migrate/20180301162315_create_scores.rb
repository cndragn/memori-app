class CreateScores < ActiveRecord::Migration[5.1]
  def change
    create_table :scores do |t|
      t.integer :correct
      t.integer :wrong

      t.timestamps
    end
  end
end
