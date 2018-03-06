class AddWrongToCards < ActiveRecord::Migration[5.1]
  def change
    add_column :cards, :wrong, :integer
  end
end
