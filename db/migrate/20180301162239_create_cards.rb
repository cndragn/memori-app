class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :original
      t.string :target
      t.string :language

      t.timestamps
    end
  end
end
