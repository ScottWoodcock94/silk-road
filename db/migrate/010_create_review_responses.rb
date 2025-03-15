class CreateReviewResponses < ActiveRecord::Migration[8.0]
  def change
    create_table :review_responses do |t|
      t.integer :review_id, null: false
      t.integer :author_id, null: false
      t.string :content, null: false
      t.boolean :approved, default: false, null: false
      t.datetime :datetime, null: false, default: -> { 'CURRENT_TIMESTAMP' }

      t.timestamps
    end
  end
end
