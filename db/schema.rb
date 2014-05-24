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

ActiveRecord::Schema.define(version: 20140524214349) do

  create_table "appellations", force: true do |t|
    t.string   "name"
    t.integer  "subregion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "flashcards", force: true do |t|
    t.string   "question"
    t.string   "concern"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "concern2"
  end

  create_table "grapes", force: true do |t|
    t.string   "name"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "concern2"
  end

  create_table "regions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subregions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "region_id"
  end

  create_table "subvitis", force: true do |t|
    t.integer  "subregion_id"
    t.integer  "grape_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
