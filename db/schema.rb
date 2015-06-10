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

ActiveRecord::Schema.define(version: 20150610152842) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "kids", force: :cascade do |t|
    t.string   "first_name",   null: false
    t.string   "last_name",    null: false
    t.string   "email",        null: false
    t.string   "password_dig", null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "parent_id",    null: false
  end

  add_index "kids", ["email"], name: "index_kids_on_email", unique: true, using: :btree
  add_index "kids", ["parent_id"], name: "index_kids_on_parent_id", using: :btree

  create_table "parents", force: :cascade do |t|
    t.string   "first_name",   null: false
    t.string   "last_name",    null: false
    t.string   "email",        null: false
    t.string   "password_dig", null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "parents", ["email"], name: "index_parents_on_email", unique: true, using: :btree

  create_table "scoops", force: :cascade do |t|
    t.string   "headline",   null: false
    t.string   "story",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "kid_id"
  end

  add_index "scoops", ["kid_id"], name: "index_scoops_on_kid_id", using: :btree

  add_foreign_key "kids", "parents"
  add_foreign_key "scoops", "kids"
end
