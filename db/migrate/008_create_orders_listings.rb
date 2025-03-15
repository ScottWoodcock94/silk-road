class CreateOrdersListings < ActiveRecord::Migration[8.0]
  def change
    create_table :orders_listings, id: false do |t|
      t.belongs_to :orders, null: false
      t.belongs_to :listings, null: false
      t.integer :quantity, null: false, default: 1
    end
  end
end
