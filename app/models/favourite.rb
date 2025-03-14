class Favourite < ApplicationRecord
  has_and_belongs_to_many :listings
  has_one :user
end
