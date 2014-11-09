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

ActiveRecord::Schema.define(version: 20141109174719) do

  create_table "ratings", force: true do |t|
    t.integer  "restaurant_id"
    t.integer  "user_id"
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ratings", ["restaurant_id"], name: "index_ratings_on_restaurant_id"
  add_index "ratings", ["user_id"], name: "index_ratings_on_user_id"

  create_table "restaurants", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.string   "username",        null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

  create_table "visits", force: true do |t|
    t.integer  "user_id"
    t.integer  "restaurant_id"
    t.date     "last_visit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "visits", ["restaurant_id"], name: "index_visits_on_restaurant_id"
  add_index "visits", ["user_id"], name: "index_visits_on_user_id"

end
