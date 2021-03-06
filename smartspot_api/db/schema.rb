# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160314004042) do

  create_table "parkings", force: :cascade do |t|
    t.integer  "technician_id", limit: 4
    t.string   "name",          limit: 255
    t.string   "address",       limit: 255
    t.string   "latitude",      limit: 255
    t.string   "longitude",     limit: 255
    t.string   "description",   limit: 255
    t.string   "key",           limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "parkings", ["technician_id"], name: "index_parkings_on_technician_id", using: :btree

  create_table "spots", force: :cascade do |t|
    t.integer  "parking_id",      limit: 4
    t.string   "label",           limit: 255
    t.integer  "sensed_distance", limit: 4,   default: -2
    t.string   "sensor_id",       limit: 255
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "spots", ["parking_id"], name: "index_spots_on_parking_id", using: :btree

  create_table "technicians", force: :cascade do |t|
    t.string   "username",        limit: 255
    t.string   "password_digest", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

end
