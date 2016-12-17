class AddFieldToReviews < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviews, :user, foreign_key: true
    add_column :reviews, :rate, :integer
  end
end
