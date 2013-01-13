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

ActiveRecord::Schema.define(:version => 20130110153648) do

  create_table "accounts", :force => true do |t|
    t.string   "name"
    t.string   "subdomain"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
    t.string   "plan_type"
  end

  create_table "ads", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "footer"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "emergency_groups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "pharmacy_id"
    t.string   "website_title"
    t.string   "website_note"
    t.integer  "account_id"
  end

  add_index "emergency_groups", ["account_id"], :name => "index_emergency_groups_on_account_id"

  create_table "events", :force => true do |t|
    t.integer  "pharmacy_id"
    t.datetime "starttime"
    t.datetime "endtime"
    t.boolean  "all_day"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.integer  "account_id"
    t.string   "color"
    t.boolean  "recurring",          :default => false, :null => false
    t.string   "recurring_interval"
    t.integer  "recurring_period"
    t.datetime "recurring_endtime"
    t.string   "event_type"
    t.integer  "info_id"
    t.integer  "ad_id"
  end

  add_index "events", ["account_id"], :name => "index_events_on_account_id"

  create_table "infos", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "footer"
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
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.integer  "emergency_group_id"
    t.integer  "event_id"
    t.string   "city"
    t.string   "zipcode"
    t.integer  "account_id"
    t.time     "emergency_hour_change_time"
    t.string   "district"
  end

  add_index "pharmacies", ["account_id"], :name => "index_pharmacies_on_account_id"

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
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",                  :default => false
    t.integer  "account_id"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
    t.integer  "roles_mask"
    t.string   "last_name"
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
