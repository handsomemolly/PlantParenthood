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

ActiveRecord::Schema.define(version: 2021_01_07_192931) do

  create_table "bookings", force: :cascade do |t|
    t.integer "listing_id", null: false
    t.integer "sitter_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["listing_id"], name: "index_bookings_on_listing_id"
    t.index ["sitter_id"], name: "index_bookings_on_sitter_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "listings", force: :cascade do |t|
    t.integer "parent_id", null: false
    t.integer "length_of_stay"
    t.integer "city_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "compensation"
    t.index ["parent_id"], name: "index_listings_on_parent_id"
  end

  create_table "notes", force: :cascade do |t|
    t.integer "user_plant_id", null: false
    t.string "add_care"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_plant_id"], name: "index_notes_on_user_plant_id"
  end

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.string "latin_name"
    t.string "difficulty"
    t.string "plant_type"
    t.string "rarity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_plants", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "plant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["plant_id"], name: "index_user_plants_on_plant_id"
    t.index ["user_id"], name: "index_user_plants_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "experience"
    t.integer "city_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

  add_foreign_key "bookings", "listings"
  add_foreign_key "bookings", "users", column: "sitter_id"
  add_foreign_key "listings", "users", column: "parent_id"
  add_foreign_key "notes", "user_plants"
  add_foreign_key "user_plants", "plants"
  add_foreign_key "user_plants", "users"
end
