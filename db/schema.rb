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

ActiveRecord::Schema.define(version: 2019_10_11_224122) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "hstore"
  enable_extension "plpgsql"

  create_table "attendances", force: :cascade do |t|
    t.boolean "check_in"
    t.boolean "check_out"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_attendances_on_student_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "room_id"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.string "dob"
    t.string "allergies"
    t.string "medications"
    t.string "dr_name"
    t.string "dr_phone"
    t.string "contact1_name"
    t.string "contact1_phone"
    t.string "contact1_relationship"
    t.string "contact2_name"
    t.string "contact2_phone"
    t.string "contact2_relationship"
    t.string "contact3_name"
    t.string "contact3_phone"
    t.string "contact3_relationship"
    t.index ["room_id"], name: "index_students_on_room_id"
  end

  add_foreign_key "attendances", "students"
  add_foreign_key "students", "rooms"
end
