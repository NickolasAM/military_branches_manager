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

ActiveRecord::Schema.define(version: 2023_03_23_040615) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aircrafts", force: :cascade do |t|
    t.bigint "military_branch_id"
    t.string "name"
    t.boolean "fixed_wing"
    t.integer "pilot_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["military_branch_id"], name: "index_aircrafts_on_military_branch_id"
  end

  create_table "military_branches", force: :cascade do |t|
    t.string "name"
    t.boolean "sea_based"
    t.integer "year_established"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "aircrafts", "military_branches"
end
