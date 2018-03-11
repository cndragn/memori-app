class AddUserAnswerToCard < ActiveRecord::Migration[5.1]
  def change
    add_column :cards, :user_answer, :string
  end
end
