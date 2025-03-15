class CreateReviews < ActiveRecord::Migration[8.0]
  def change
    create_table :reviews do |t|
      t.integer :listing_id
      t.integer :user_id
      t.integer :author_id, null: false
      t.string :content, null: false
      t.integer :rating
      t.integer :response_id
      t.boolean :approved, default: false, null: false
      t.datetime :datetime, null: false, default: DateTime.now

      t.timestamps
    end
  end
end
