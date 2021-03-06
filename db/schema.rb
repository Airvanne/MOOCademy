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

ActiveRecord::Schema.define(version: 2018_10_24_223817) do

  create_table "cours", force: :cascade do |t|
    t.string "titre"
    t.string "description"
    t.integer "lecon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lecon_id"], name: "index_cours_on_lecon_id"
  end

  create_table "lecons", force: :cascade do |t|
    t.string "titre"
    t.text "body"
    t.integer "cour_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cour_id"], name: "index_lecons_on_cour_id"
  end

end
