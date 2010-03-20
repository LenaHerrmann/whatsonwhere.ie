# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

<<<<<<< HEAD
ActiveRecord::Schema.define(:version => 20100316224935) do
=======
ActiveRecord::Schema.define(:version => 20100318212125) do
>>>>>>> 9969a3d6964c79fbb67cbad780a18d568b1b51c0

  create_table "age_limits", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "businesses", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "address"
    t.string   "province"
    t.string   "city"
    t.string   "country"
    t.float    "longitude"
    t.float    "lattitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_instances", :force => true do |t|
    t.datetime "start"
    t.datetime "end"
    t.string   "notes"
<<<<<<< HEAD
    t.integer  "ticketPrice", :limit => 10, :precision => 10, :scale => 0
    t.integer  "doorPrice",   :limit => 10, :precision => 10, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
=======
    t.integer  "ticketPrice",  :limit => 10, :precision => 10, :scale => 0
    t.integer  "doorPrice",    :limit => 10, :precision => 10, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "age_limit_id"
    t.integer  "genre_id"
>>>>>>> 9969a3d6964c79fbb67cbad780a18d568b1b51c0
  end

  create_table "genres", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movies", :force => true do |t|
    t.string   "name"
    t.integer  "duration"
    t.string   "genre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "message"
  end

  create_table "rates", :force => true do |t|
    t.integer  "rater_id"
    t.integer  "rateable_id"
    t.string   "rateable_type"
    t.integer  "stars",         :null => false
    t.string   "dimension"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rates", ["rateable_id", "rateable_type"], :name => "index_rates_on_rateable_id_and_rateable_type"
  add_index "rates", ["rater_id"], :name => "index_rates_on_rater_id"

  create_table "reviews", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.integer  "login_count"
    t.datetime "last_request_at"
    t.datetime "last_login_at"
    t.datetime "current_login_at"
    t.string   "last_login_ip"
    t.string   "current_login_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "perishable_token",  :default => "", :null => false
    t.string   "email",             :default => "", :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email"
  add_index "users", ["perishable_token"], :name => "index_users_on_perishable_token"

end
