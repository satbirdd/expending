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

ActiveRecord::Schema.define(version: 20141125141828) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "pinyin"
    t.string   "ancestry"
  end

  create_table "income_categories", force: true do |t|
    t.string   "name"
    t.string   "ancestry"
    t.string   "pinyin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "income_items", force: true do |t|
    t.integer  "income_category_id"
    t.decimal  "money",              precision: 10, scale: 2
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "income_items", ["income_category_id"], name: "index_income_items_on_income_category_id", using: :btree

  create_table "items", force: true do |t|
    t.integer  "category_id"
    t.string   "description"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "money",       precision: 10, scale: 2
  end

  add_index "items", ["category_id"], name: "index_items_on_category_id", using: :btree

end
