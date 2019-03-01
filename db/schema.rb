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

ActiveRecord::Schema.define(version: 2019_03_01_031748) do

  create_table "matches", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "number"
    t.integer "blue_alliance_1"
    t.integer "blue_alliance_2"
    t.integer "blue_alliance_3"
    t.integer "red_alliance_1"
    t.integer "red_alliance_2"
    t.integer "red_alliance_3"
    t.integer "red_score"
    t.integer "blue_score"
    t.integer "red_ranking_points"
    t.integer "blue_ranking_points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "number"
    t.string "name"
    t.text "notes"
    t.integer "autonomous"
    t.integer "objective_score"
    t.integer "consistency"
    t.integer "driver_skill"
    t.text "issues"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "move_cargo"
    t.integer "cargo_max"
    t.integer "cargo_pickup"
    t.boolean "move_hatch"
    t.integer "hatch_max"
    t.integer "hatch_pickup"
    t.string "wheel_type"
    t.integer "climb_level"
    t.string "climb_notes"
    t.integer "sandstorm_mode"
    t.string "sandstorm_notes"
    t.integer "defence"
    t.string "wheelType"
  end

end
