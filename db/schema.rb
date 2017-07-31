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

ActiveRecord::Schema.define(version: 20170731152312) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ad_categories", force: :cascade do |t|
    t.bigint "ad_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ad_id"], name: "index_ad_categories_on_ad_id"
    t.index ["category_id"], name: "index_ad_categories_on_category_id"
  end

  create_table "ads", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.float "price"
    t.string "location"
    t.string "image_url"
    t.integer "creator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "saver_ads", force: :cascade do |t|
    t.bigint "saver_id"
    t.bigint "saved_ad_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["saved_ad_id"], name: "index_saver_ads_on_saved_ad_id"
    t.index ["saver_id"], name: "index_saver_ads_on_saver_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_url"
  end

end
