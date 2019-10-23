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

ActiveRecord::Schema.define(version: 2019_07_25_195353) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "all_items", force: :cascade do |t|
    t.string "item_name"
    t.integer "price"
    t.string "image_url"
    t.string "description"
  end

  create_table "carts", force: :cascade do |t|
    t.integer "user_id"
    t.string "quantity"
    t.string "item_name"
    t.integer "price"
    t.string "image_url"
    t.integer "item_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.string "item_name"
    t.integer "price"
    t.string "image_url"
    t.string "description"
    t.integer "item_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
