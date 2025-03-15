class UpdateListings < ActiveRecord::Migration[8.0]
  def change
    add_foreign_key :listings, :users
  end
end
