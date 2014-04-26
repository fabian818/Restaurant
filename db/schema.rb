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

ActiveRecord::Schema.define(version: 20140426023836) do

  create_table "administrators", force: true do |t|
    t.integer  "person_id"
    t.string   "username"
    t.string   "password"
    t.boolean  "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "chefs", force: true do |t|
    t.integer  "person_id"
    t.integer  "cooked"
    t.float    "salary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: true do |t|
    t.integer  "person_id"
    t.float    "money_invested"
    t.integer  "visits"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "food_types", force: true do |t|
    t.string   "noun"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "foods", force: true do |t|
    t.integer  "food_type_id"
    t.string   "noun"
    t.text     "description"
    t.float    "cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", force: true do |t|
    t.string   "name"
    t.string   "dni"
    t.string   "lastname"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sale_details", force: true do |t|
    t.integer  "sale_id"
    t.integer  "food_id"
    t.integer  "quantity"
    t.float    "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sales", force: true do |t|
    t.integer  "client_id"
    t.integer  "waiter_id"
    t.float    "total_cost"
    t.boolean  "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "waiters", force: true do |t|
    t.integer  "person_id"
    t.integer  "clients"
    t.float    "salary"
    t.boolean  "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
