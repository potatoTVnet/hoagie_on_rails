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

ActiveRecord::Schema.define(version: 2019_01_24_102907) do

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.integer "main_id"
    t.integer "second_id"
    t.integer "salad_id"
    t.integer "cheese_id"
    t.integer "sauce_id"
    t.integer "drink_id"
    t.integer "price"
    t.integer "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cheese_id"], name: "index_items_on_cheese_id"
    t.index ["drink_id"], name: "index_items_on_drink_id"
    t.index ["main_id"], name: "index_items_on_main_id"
    t.index ["order_id"], name: "index_items_on_order_id"
    t.index ["salad_id"], name: "index_items_on_salad_id"
    t.index ["sauce_id"], name: "index_items_on_sauce_id"
    t.index ["second_id"], name: "index_items_on_second_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "payment"
    t.integer "price"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end