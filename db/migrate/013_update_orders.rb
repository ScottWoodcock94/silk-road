class UpdateOrders < ActiveRecord::Migration[8.0]
  def change
    add_foreign_key :orders, :users
    add_foreign_key :orders, :listings
  end
end
