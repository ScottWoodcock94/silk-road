class UpdateReviews < ActiveRecord::Migration[8.0]
  def change
    add_foreign_key :reviews, :users
    add_foreign_key :reviews, :users
  end
end
