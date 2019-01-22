# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_01_21_042407) do

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.string "street"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.string "phone_number"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parts", force: :cascade do |t|
    t.string "part_number"
    t.string "part_name"
    t.integer "cost"
    t.string "part_designation"
    t.integer "quantity"
    t.integer "vendor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vendor_id"], name: "index_parts_on_vendor_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "date"
    t.string "work_description"
    t.integer "car_miles"
    t.integer "work_hours"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicle_service_parts", force: :cascade do |t|
    t.integer "vehicle_id"
    t.integer "service_id"
    t.integer "part_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["part_id"], name: "index_vehicle_service_parts_on_part_id"
    t.index ["service_id"], name: "index_vehicle_service_parts_on_service_id"
    t.index ["vehicle_id"], name: "index_vehicle_service_parts_on_vehicle_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "make"
    t.string "model"
    t.integer "year"
    t.string "vin"
    t.string "engine"
    t.string "car_classification"
    t.string "color"
    t.integer "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_vehicles_on_owner_id"
  end

  create_table "vendors", force: :cascade do |t|
    t.string "name"
    t.string "contact"
    t.string "website"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
