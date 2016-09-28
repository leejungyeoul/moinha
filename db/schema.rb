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

ActiveRecord::Schema.define(version: 20160925004525) do

  create_table "cirly1s", force: :cascade do |t|
    t.text     "content"
    t.integer  "num"
    t.string   "current"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cirpeos", force: :cascade do |t|
    t.string   "apply_current"
    t.string   "apply_num"
    t.string   "apply_peo"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "gamly1s", force: :cascade do |t|
    t.text     "content"
    t.integer  "num"
    t.string   "current"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gampeos", force: :cascade do |t|
    t.string   "apply_current"
    t.string   "apply_num"
    t.string   "apply_peo"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "models", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "models", ["email"], name: "index_models_on_email", unique: true
  add_index "models", ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true

  create_table "postcircle7s", force: :cascade do |t|
    t.string   "title"
    t.string   "name"
    t.string   "site"
    t.string   "date"
    t.string   "what_sports"
    t.string   "kakao"
    t.text     "content"
    t.string   "current"
    t.integer  "people_num"
    t.string   "image_url",   default: ""
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "postcircles", force: :cascade do |t|
    t.string   "title"
    t.string   "user"
    t.string   "site"
    t.string   "date"
    t.text     "content"
    t.string   "image_url",  default: ""
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "postgame7s", force: :cascade do |t|
    t.string   "title"
    t.string   "name"
    t.string   "site"
    t.string   "date"
    t.string   "what_sports"
    t.string   "kakao"
    t.text     "content"
    t.string   "current"
    t.integer  "people_num"
    t.string   "image_url",   default: ""
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "postgames", force: :cascade do |t|
    t.string   "title"
    t.string   "user"
    t.string   "site"
    t.string   "date"
    t.text     "content"
    t.string   "image_url",  default: ""
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "postreadings", force: :cascade do |t|
    t.string   "title"
    t.string   "user"
    t.string   "site"
    t.string   "date"
    t.text     "content"
    t.string   "image_url",  default: ""
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.string   "user"
    t.string   "site"
    t.string   "date"
    t.text     "content"
    t.string   "image_url",  default: ""
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "postsport7s", force: :cascade do |t|
    t.string   "title"
    t.string   "name"
    t.string   "site"
    t.string   "date"
    t.string   "what_sports"
    t.string   "kakao"
    t.text     "content"
    t.string   "current"
    t.integer  "people_num"
    t.string   "image_url",   default: ""
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "postsports", force: :cascade do |t|
    t.string   "title"
    t.string   "user"
    t.string   "site"
    t.string   "date"
    t.text     "content"
    t.string   "image_url",  default: ""
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "posttheater7s", force: :cascade do |t|
    t.string   "title"
    t.string   "name"
    t.string   "site"
    t.string   "date"
    t.string   "what_sports"
    t.string   "kakao"
    t.text     "content"
    t.string   "current"
    t.integer  "people_num"
    t.string   "image_url",   default: ""
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "posttheaters", force: :cascade do |t|
    t.string   "title"
    t.string   "name"
    t.string   "site"
    t.string   "date"
    t.string   "what_sports"
    t.string   "kakao"
    t.text     "content"
    t.string   "current"
    t.integer  "people_num"
    t.string   "image_url",   default: ""
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "spoly1s", force: :cascade do |t|
    t.text     "content"
    t.integer  "num"
    t.string   "current"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spopeos", force: :cascade do |t|
    t.string   "apply_current"
    t.string   "apply_num"
    t.string   "apply_peo"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "talk2s", force: :cascade do |t|
    t.string   "name"
    t.string   "pass"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "talk_replies", force: :cascade do |t|
    t.string   "pass"
    t.string   "num"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "talks", force: :cascade do |t|
    t.string   "name"
    t.string   "pass"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "thealy1s", force: :cascade do |t|
    t.text     "content"
    t.integer  "num"
    t.string   "current"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "theapeos", force: :cascade do |t|
    t.string   "apply_current"
    t.string   "apply_num"
    t.string   "apply_peo"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
