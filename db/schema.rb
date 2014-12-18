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

ActiveRecord::Schema.define(version: 20141209135541) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "budgets", force: true do |t|
    t.string   "hotel"
    t.integer  "realised"
    t.integer  "year"
    t.float    "rooms_available"
    t.float    "rooms_sold"
    t.float    "average_room_rate"
    t.float    "room_sales"
    t.float    "food_sales"
    t.float    "beverage_sales"
    t.float    "telephone_sales"
    t.float    "other_sales"
    t.float    "room_costs"
    t.float    "food_costs"
    t.float    "beverage_costs"
    t.float    "telephone_costs"
    t.float    "other_costs"
    t.float    "ge_admin_and_general"
    t.float    "ge_sales_and_marketing"
    t.float    "ge_utilities"
    t.float    "ge_repair_and_maintenance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
