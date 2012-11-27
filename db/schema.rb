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

ActiveRecord::Schema.define(:version => 20121123130833) do

  create_table "accounts", :force => true do |t|
    t.string   "name"
    t.string   "subdomain"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  add_index "accounts", ["user_id"], :name => "index_accounts_on_user_id"

  create_table "carts", :force => true do |t|
    t.datetime "purchased_at"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
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
  end

  add_index "events", ["account_id"], :name => "index_events_on_account_id"

  create_table "line_items", :force => true do |t|
    t.decimal  "unit_price"
    t.integer  "product_id"
    t.integer  "cart_id"
    t.integer  "quantity"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "order_transactions", :force => true do |t|
    t.integer  "order_id"
    t.string   "action"
    t.integer  "amount"
    t.boolean  "success"
    t.string   "authorization"
    t.string   "message"
    t.text     "params"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "orders", :force => true do |t|
    t.integer  "cart_id"
    t.string   "ip_address"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "card_type"
    t.date     "card_expires_on"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "express_token"
    t.string   "express_payer_id"
  end

  create_table "payment_notifications", :force => true do |t|
    t.text     "params"
    t.integer  "card_id"
    t.string   "status"
    t.string   "transaction_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
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
  end

  add_index "pharmacies", ["account_id"], :name => "index_pharmacies_on_account_id"

  create_table "pharmacies_users", :force => true do |t|
    t.integer  "pharmacy_id"
    t.integer  "user_id"
    t.integer  "position"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "price"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "color"
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
  end

  add_index "users", ["account_id"], :name => "index_users_on_account_id"
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
