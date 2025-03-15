class Listing < ApplicationRecord
  has_one :category
  has_and_belongs_to_many :favourites
  has_and_belongs_to_many :orders
  has_many :reviews
  has_one :user
end
