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

ActiveRecord::Schema.define(version: 2021_03_01_165109) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "facilities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "garden_facilities", force: :cascade do |t|
    t.bigint "garden_id", null: false
    t.bigint "facility_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["facility_id"], name: "index_garden_facilities_on_facility_id"
    t.index ["garden_id"], name: "index_garden_facilities_on_garden_id"
  end

  create_table "gardens", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.integer "tent_capacity"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_gardens_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "description"
    t.float "rating"
    t.bigint "garden_id", null: false
    t.bigint "segment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["garden_id"], name: "index_reviews_on_garden_id"
    t.index ["segment_id"], name: "index_reviews_on_segment_id"
  end

  create_table "segments", force: :cascade do |t|
    t.string "destination"
    t.float "distance"
    t.float "elevation"
    t.datetime "start_time"
    t.datetime "end_time"
    t.boolean "current"
    t.boolean "completed"
    t.bigint "trip_id", null: false
    t.bigint "garden_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["garden_id"], name: "index_segments_on_garden_id"
    t.index ["trip_id"], name: "index_segments_on_trip_id"
  end

  create_table "trips", force: :cascade do |t|
    t.string "final_destination"
    t.float "latitude"
    t.float "longitude"
    t.float "total_distance"
    t.float "total_elevation"
    t.date "start_date"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_trips_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "garden_facilities", "facilities"
  add_foreign_key "garden_facilities", "gardens"
  add_foreign_key "gardens", "users"
  add_foreign_key "reviews", "gardens"
  add_foreign_key "reviews", "segments"
  add_foreign_key "segments", "gardens"
  add_foreign_key "segments", "trips"
  add_foreign_key "trips", "users"
end
