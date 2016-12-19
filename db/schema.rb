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

ActiveRecord::Schema.define(version: 20161219152448) do

  create_table "administrators", force: :cascade do |t|
    t.string   "login",      limit: 255
    t.string   "password",   limit: 255
    t.string   "email",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payment_types", force: :cascade do |t|
    t.integer  "year",       limit: 4
    t.integer  "month",      limit: 4
    t.integer  "day",        limit: 4
    t.integer  "price",      limit: 4
    t.integer  "server_id",  limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "payment_types", ["server_id"], name: "fk_rails_7e7e197288", using: :btree

  create_table "payments", force: :cascade do |t|
    t.integer  "payment_type_id", limit: 4
    t.integer  "user_id",         limit: 4
    t.integer  "amount",          limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "payments", ["payment_type_id"], name: "fk_rails_5d8e0b0538", using: :btree
  add_index "payments", ["user_id"], name: "fk_rails_081dc04a02", using: :btree

  create_table "servers", force: :cascade do |t|
    t.string   "type",        limit: 255
    t.string   "ip",          limit: 255
    t.string   "region",      limit: 255
    t.string   "server_user", limit: 255
    t.string   "key",         limit: 255
    t.string   "configPath",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "login",      limit: 255
    t.string   "password",   limit: 255
    t.string   "email",      limit: 255
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "wechat",     limit: 255
  end

  create_table "vpns", force: :cascade do |t|
    t.integer  "server_id",  limit: 4
    t.integer  "user_id",    limit: 4
    t.string   "login",      limit: 255
    t.string   "password",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vpns", ["server_id"], name: "fk_rails_bdcc411601", using: :btree
  add_index "vpns", ["user_id"], name: "fk_rails_736d506d69", using: :btree

  add_foreign_key "payment_types", "servers"
  add_foreign_key "payments", "payment_types"
  add_foreign_key "payments", "users"
  add_foreign_key "vpns", "servers"
  add_foreign_key "vpns", "users"
end
