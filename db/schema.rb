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

ActiveRecord::Schema.define(version: 20131007102131) do

  create_table "activities", force: true do |t|
    t.string   "title"
    t.text     "desc"
    t.datetime "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "activities_locations", id: false, force: true do |t|
    t.integer "activity_id", null: false
    t.integer "location_id", null: false
  end

  create_table "joins", force: true do |t|
    t.string   "jid"
    t.string   "title"
    t.text     "desc"
    t.datetime "timestamp"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "joins", ["jid"], name: "index_joins_on_jid", using: :btree

  create_table "locations", force: true do |t|
    t.string   "title"
    t.text     "desc"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
