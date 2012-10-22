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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121022135737) do

  create_table "emergency_groups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "pharmacy_id"
  end

  create_table "events", :force => true do |t|
    t.integer  "pharmacy_id"
    t.date     "starttime"
    t.date     "endtime"
    t.text     "description"
    t.string   "title"
    t.boolean  "all_day"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "pharmacies", :force => true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "phone_number"
    t.string   "fax_number"
    t.string   "email"
    t.string   "website_url"
    t.string   "owner_name"
    t.time     "start_hours"
    t.time     "end_hours"
    t.integer  "bga_number"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "emergency_group_id"
    t.integer  "event_id"
  end

  create_table "pharmacies_users", :force => true do |t|
    t.integer  "pharmacy_id"
    t.integer  "user_id"
    t.integer  "position"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
