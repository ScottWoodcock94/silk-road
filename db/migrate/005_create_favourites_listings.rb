class CreateFavouritesListings < ActiveRecord::Migration[8.0]
  def change
    create_join_table :favourites, :listings, table_name: :favourites_listings
  end
end
