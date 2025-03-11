class UpdateReviewResponses < ActiveRecord::Migration[8.0]
  def change
    add_foreign_key :review_responses, :reviews
    add_foreign_key :review_responses, :users, column: :author_id
  end
end
