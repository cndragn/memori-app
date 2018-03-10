class AddReviewToCards < ActiveRecord::Migration[5.1]
  def change
    add_column :cards, :review, :integer
  end
end
