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

ActiveRecord::Schema.define(version: 20170130000110) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "car_move_log_entries", force: :cascade do |t|
    t.boolean  "arriving"
    t.integer  "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "railcar_id"
    t.index ["railcar_id"], name: "index_car_move_log_entries_on_railcar_id", using: :btree
  end

  create_table "car_temp_log_entries", force: :cascade do |t|
    t.integer  "degrees"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "railcar_id"
    t.index ["railcar_id"], name: "index_car_temp_log_entries_on_railcar_id", using: :btree
  end

  create_table "railcars", force: :cascade do |t|
    t.string   "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean  "in_yard"
  end

  add_foreign_key "car_move_log_entries", "railcars"
  add_foreign_key "car_temp_log_entries", "railcars"
end
