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

ActiveRecord::Schema.define(version: 20150510051724) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "master_phone_group_master_phone_models", force: :cascade do |t|
    t.integer  "master_phone_model_id"
    t.integer  "master_phone_group_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "master_phone_groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "master_phone_model_shops", force: :cascade do |t|
    t.integer  "shop_id"
    t.integer  "master_phone_model_id"
    t.integer  "potision"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "master_phone_model_shops", ["master_phone_model_id"], name: "index_master_phone_model_shops_on_master_phone_model_id", using: :btree
  add_index "master_phone_model_shops", ["shop_id"], name: "index_master_phone_model_shops_on_shop_id", using: :btree

  create_table "master_phone_models", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shops", force: :cascade do |t|
    t.string   "name"
    t.integer  "master_phone_group_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_foreign_key "master_phone_model_shops", "master_phone_models"
  add_foreign_key "master_phone_model_shops", "shops"
end
