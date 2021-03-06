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

ActiveRecord::Schema.define(version: 20130914060520) do

  create_table "pages", force: true do |t|
    t.integer "user_id"
    t.string  "page_title"
    t.string  "contact_info"
    t.string  "business_desc"
  end

  create_table "profiles", force: true do |t|
    t.integer  "user_id"
    t.string   "contact_info"
    t.string   "experience"
    t.string   "pref_languages"
    t.string   "pref_task_types"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: true do |t|
    t.string   "name"
    t.integer  "owner_id"
    t.integer  "contributor_id"
    t.string   "requirements"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.string   "type"
    t.integer  "profile_id"
    t.integer  "page_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
