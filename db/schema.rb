# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_12_014138) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "grape_listings", force: :cascade do |t|
    t.bigint "grape_id", null: false
    t.bigint "listing_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["grape_id"], name: "index_grape_listings_on_grape_id"
    t.index ["listing_id"], name: "index_grape_listings_on_listing_id"
  end

  create_table "grapes", force: :cascade do |t|
    t.string "grape_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "listings", force: :cascade do |t|
    t.string "name"
    t.string "vintage"
    t.string "region"
    t.string "grape"
    t.text "notes"
    t.text "description"
    t.string "alcohol"
    t.string "size"
    t.string "wine_type"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.string "email"
    t.bigint "listing_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["listing_id"], name: "index_users_on_listing_id"
  end

  add_foreign_key "grape_listings", "grapes"
  add_foreign_key "grape_listings", "listings"
  add_foreign_key "users", "listings"
end
