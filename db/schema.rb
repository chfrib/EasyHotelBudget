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
    t.integer  "year"
    t.integer  "rooms_available"
    t.integer  "rooms_sold"
    t.integer  "average_room_rate"
    t.integer  "room_sales"
    t.integer  "food_sales"
    t.integer  "beverage_sales"
    t.integer  "telephone_sales"
    t.integer  "other_sales"
    t.string   "room_costs"
    t.integer  "food_costs"
    t.integer  "beverage_costs"
    t.integer  "telephone_costs"
    t.integer  "other_costs"
    t.integer  "ge_admin_and_general"
    t.integer  "ge_sales_and_marketing"
    t.integer  "ge_utilities"
    t.integer  "ge_repair_and_maintenance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
