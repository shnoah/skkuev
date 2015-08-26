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

ActiveRecord::Schema.define(version: 20150825153830) do

  create_table "subjects", force: :cascade do |t|
    t.string   "group"
    t.string   "dept"
    t.string   "division"
    t.string   "code"
    t.string   "name"
    t.string   "prof"
    t.text     "time"
    t.string   "category"
    t.string   "credit"
    t.string   "l_time"
    t.string   "ppl"
    t.string   "max_ppl"
    t.string   "note00"
    t.string   "note01"
    t.string   "note02"
    t.string   "note03"
    t.string   "note04"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "writes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "subject_id"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
