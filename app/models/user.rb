class User < ApplicationRecord
  enum :role, { ADMIN: 0, BUYER: 1, GUEST: 2, SELLER: 3 }
  enum :rating, { FAIR: 0, RELIABLE: 1, EXEMPLARY: 2 }

  has_many :favourites
  has_many :listings
  has_many :messages
  has_many :orders
  has_many :reviews
end
