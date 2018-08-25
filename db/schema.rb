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

ActiveRecord::Schema.define(version: 20180825100552) do

  create_table "converstions", force: :cascade do |t|
    t.integer "user1_id"
    t.integer "user2_id"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.integer "sender_id"
    t.integer "receiver_id"
    t.integer "conversation_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "converstion_id"
  end

  create_table "products", force: :cascade do |t|
    t.text "name"
    t.text "content"
    t.boolean "status", default: false
    t.text "image"
    t.text "price"
    t.text "address_num"
    t.text "address_text"
    t.text "address_text2"
    t.integer "user_id"
    t.text "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "delivery"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "address_num"
    t.text "address_text"
    t.text "address_text2"
    t.string "provider"
    t.text "uid"
    t.boolean "admin"
    t.string "profile_img"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
