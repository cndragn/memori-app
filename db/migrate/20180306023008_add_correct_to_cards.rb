class AddCorrectToCards < ActiveRecord::Migration[5.1]
  def change
    add_column :cards, :correct, :integer
  end
end
