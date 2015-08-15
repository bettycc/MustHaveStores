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

ActiveRecord::Schema.define(version: 0) do

  create_table "orderitems", force: :cascade do |t|
    t.integer "product_id"
    t.integer "order_id"
  end

  add_index "orderitems", ["order_id"], name: "index_orderitems_on_order_id"
  add_index "orderitems", ["product_id"], name: "index_orderitems_on_product_id"

  create_table "orders", force: :cascade do |t|
    t.string "date"
    t.string "ship_day"
    t.string "name"
    t.text   "contact_info"
    t.text   "bill_info"
    t.text   "ship_info"
  end

  create_table "products", force: :cascade do |t|
    t.string  "name"
    t.integer "store_id"
    t.string  "kind"
    t.integer "price"
    t.text    "description"
    t.string  "designer"
    t.text    "photourl1"
    t.text    "photourl2"
    t.text    "photourl3"
    t.string  "release_date"
    t.integer "is_featured"
    t.integer "in_stock"
    t.integer "sold"
  end

  add_index "products", ["store_id"], name: "index_products_on_store_id"

  create_table "stores", force: :cascade do |t|
    t.string  "name"
    t.string  "kind"
    t.text    "description"
    t.string  "contact_info"
    t.text    "photourl"
    t.string  "open_date"
    t.integer "is_featured"
  end

  create_table "users", force: :cascade do |t|
    t.string  "name"
    t.string  "email"
    t.boolean "admin",           default: false
    t.string  "password_digest"
  end

end
