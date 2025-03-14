# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 15) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "title", null: false
    t.integer "tier", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_categories", id: false, force: :cascade do |t|
    t.integer "category_id"
    t.integer "parent_category_id"
    t.integer "child_category_id"
  end

  create_table "favourites", force: :cascade do |t|
    t.string "title", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favourites_listings", id: false, force: :cascade do |t|
    t.bigint "favourite_id", null: false
    t.bigint "listing_id", null: false
  end

  create_table "listings", force: :cascade do |t|
    t.string "image_url"
    t.string "title", null: false
    t.string "description", default: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", null: false
    t.integer "condition", default: 0, null: false
    t.integer "price", null: false
    t.integer "currency", default: 0, null: false
    t.integer "quantity", default: 1, null: false
    t.datetime "listing_date", default: "2025-03-14 15:17:27", null: false
    t.datetime "expiration_date", null: false
    t.boolean "persistent", default: false, null: false
    t.integer "views", default: 0, null: false
    t.integer "purchases", default: 0, null: false
    t.boolean "active", default: false, null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.string "subject"
    t.string "content", null: false
    t.datetime "datetime", default: "2025-03-14 15:17:27", null: false
    t.boolean "draft", default: true, null: false
    t.boolean "sent", default: false, null: false
    t.boolean "received", default: false, null: false
    t.boolean "read", default: false, null: false
    t.integer "author_user_id", null: false
    t.integer "recipient_user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "listing_id", null: false
    t.integer "quantity", default: 1, null: false
    t.datetime "datetime", default: "2025-03-14 15:17:27", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "review_responses", force: :cascade do |t|
    t.integer "review_id", null: false
    t.integer "author_id", null: false
    t.string "content", null: false
    t.boolean "approved", default: false, null: false
    t.datetime "datetime", default: "2025-03-14 15:17:27", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "listing_id"
    t.integer "user_id"
    t.integer "author_id", null: false
    t.string "content", null: false
    t.integer "rating"
    t.integer "response_id"
    t.boolean "approved", default: false, null: false
    t.datetime "datetime", default: "2025-03-14 15:17:27", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "email", null: false
    t.string "password", null: false
    t.string "remember_token"
    t.integer "role", default: 1, null: false
    t.integer "rating", default: 0, null: false
    t.boolean "registered", default: false
    t.datetime "registration_date", precision: nil, default: "2025-03-14 15:17:27", null: false
    t.boolean "subscribed", default: false, null: false
    t.boolean "active", default: false, null: false
    t.boolean "deactivated", default: false, null: false
    t.boolean "suspended", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "listings", "users"
  add_foreign_key "messages", "users", column: "author_user_id"
  add_foreign_key "messages", "users", column: "recipient_user_id"
  add_foreign_key "orders", "listings"
  add_foreign_key "orders", "users"
  add_foreign_key "review_responses", "reviews"
  add_foreign_key "review_responses", "users", column: "author_id"
  add_foreign_key "reviews", "users"
  add_foreign_key "reviews", "users", column: "author_id"
end
