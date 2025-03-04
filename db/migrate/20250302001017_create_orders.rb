class CreateOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :orders do |t|
      t.integer :user_id, null: false
      t.integer :listing_id, null: false
      t.datetime :datetime, null: false, default: DateTime.now

      t.timestamps
    end
  end
end
