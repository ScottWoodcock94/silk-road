class CreateReviews < ActiveRecord::Migration[8.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id, null: false
      t.integer :author_id, null: false
      t.string :content, null: false
      t.integer :rating, null: false
      t.boolean :approved, null: false, default: false
      t.datetime :datetime, null: false, default: DateTime.now

      t.timestamps
    end
  end
end
