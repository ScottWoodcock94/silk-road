class User < ApplicationRecord
  enum :role, { ADMIN: 0, GUEST: 1 }
  enum :rating, { FAIR: 0, RELIABLE: 1, EXEMPLARY: 2 }
end
