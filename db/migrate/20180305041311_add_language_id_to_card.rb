class AddLanguageIdToCard < ActiveRecord::Migration[5.1]
  def change
    add_column :cards, :language_id, :integer
  end
end
