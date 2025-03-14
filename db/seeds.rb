# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.find_or_create_by!(
  username: "admin",
  email: "admin@email.com"
) do |user|
  user.password = "password"
  user.role = 0
  user.rating = 2
  user.registered = true
  user.registration_date = DateTime.now
  user.subscribed = true
  user.active = true
  user.deactivated = false
  user.suspended = false
end

User.find_or_create_by!(
  username: "vanilla_sky_123",
  email: "tom_cruise@email.com"
) do |user|
  user.password = "password"
  user.role = 1 # BUYER (Standard User)
  user.rating = 2
  user.registered = true
  user.registration_date = DateTime.now
  user.subscribed = true
  user.active = true
  user.deactivated = false
  user.suspended = false
end

User.find_or_create_by!(
  username: "bean",
  email: "mr_bean@email.com"
) do |user|
  user.password = "password"
  user.role = 2 # GUEST (Non-Registered User)
  user.rating = 2
  user.registered = false
  user.registration_date = nil
  user.subscribed = false
  user.active = true
  user.deactivated = false
  user.suspended = false
end

User.find_or_create_by!(
  username: "hip2b_square",
  email: "patrick_bateman@email.com"
) do |user|
  user.password = "password"
  user.role = 3 # SELLER (Premium User)
  user.rating = 2
  user.registered = true
  user.registration_date = DateTime.now
  user.subscribed = true
  user.active = true
  user.deactivated = false
  user.suspended = false
end
