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

ActiveRecord::Schema.define(version: 2019_10_18_041348) do

  create_table "items", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "image", null: false
    t.string "item_status", null: false
    t.string "delivery_charged", null: false
    t.string "delivery_method", null: false
    t.string "delivery_area", null: false
    t.string "delivery_shipping_date", null: false
    t.integer "total_price"
    t.text "item_profile_comment", null: false
    t.string "item_salse_status", null: false
    t.integer "good"
    t.integer "buyer_id"
    t.integer "seller_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "nick_name", null: false
    t.string "family_name", null: false
    t.string "last_name", null: false
    t.string "family_name_kana", null: false
    t.string "last_name_kana", null: false
    t.date "birthday", null: false
    t.string "iine"
    t.string "mer_point"
    t.string "icon_image"
    t.text "profiile_comments"
    t.integer "number_of_exhibits"
    t.integer "number_of_evaluations"
    t.string "excerent"
    t.string "good"
    t.string "bad"
    t.string "postal_code"
    t.string "prefectures"
    t.string "city"
    t.string "address"
    t.string "building_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "phone_number"
    t.string "phone_number2"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
