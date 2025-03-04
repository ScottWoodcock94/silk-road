class CreateListings < ActiveRecord::Migration[8.0]
  def change
    create_table :listings do |t|
      t.string :image_url, null: true
      t.string :title, null: false
      t.string :description, null: false, default: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
      t.integer :condition, null: false, default: 0
      t.integer :price, null: false
      t.integer :currency, null: false, default: 0
      t.integer :quantity, null: false, default: 1
      t.datetime :listing_date, null: false, default: DateTime.now
      t.datetime :expiration_date, null: false
      t.boolean :persistent, null: false, default: false
      t.integer :views, null: false, default: 0
      t.integer :purchases, null: false, default: 0
      t.boolean :active, null: false, default: false

      t.timestamps
    end
  end
end
