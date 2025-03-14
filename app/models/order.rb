class Order < ApplicationRecord
  has_one :listing
  has_one :user
end
