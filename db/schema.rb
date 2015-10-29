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

ActiveRecord::Schema.define(version: 20151029230921) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.integer "user_id"
    t.string  "fromcountry"
    t.string  "toairport"
    t.string  "description"
    t.string  "day"
    t.string  "month"
    t.string  "year"
  end

  create_table "items", force: :cascade do |t|
    t.string   "itemname"
    t.text     "itemdescription"
    t.string   "itemimage_file_name"
    t.string   "itemimage_content_type"
    t.integer  "itemimage_file_size"
    t.datetime "itemimage_updated_at"
    t.integer  "answer_id"
    t.integer  "request_id"
    t.boolean  "answer_deal",            default: false
    t.boolean  "request_deal",           default: false
  end

  create_table "requests", force: :cascade do |t|
    t.integer "user_id"
    t.string  "fromcountry"
    t.string  "airport"
    t.string  "daystart"
    t.string  "monthstart"
    t.string  "yearstart"
    t.string  "dayend"
    t.string  "monthend"
    t.string  "yearend"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                   default: "", null: false
    t.string   "encrypted_password",      default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",           default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "phonenumber"
    t.string   "streetaddress"
    t.string   "country"
    t.string   "territory"
    t.string   "zipcode"
    t.string   "coverphoto_file_name"
    t.string   "coverphoto_content_type"
    t.integer  "coverphoto_file_size"
    t.datetime "coverphoto_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
