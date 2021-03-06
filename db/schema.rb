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

ActiveRecord::Schema.define(version: 2018_04_27_205647) do

  create_table "pitchers", force: :cascade do |t|
    t.string "name"
    t.string "arm"
    t.integer "er"
    t.float "ip"
    t.integer "walks"
    t.integer "hits"
    t.integer "so"
    t.string "era"
    t.string "whip"
    t.string "k_per_nine"
    t.string "bb_per_nine"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "position_players", force: :cascade do |t|
    t.string "name"
    t.string "position"
    t.integer "singles"
    t.integer "doubles"
    t.integer "triples"
    t.integer "hr"
    t.integer "at_bats"
    t.integer "walks"
    t.integer "hbp"
    t.integer "hits"
    t.integer "rbis"
    t.integer "so"
    t.integer "sac_flies"
    t.string "avg"
    t.string "obp"
    t.string "slg"
    t.string "ops"
    t.string "runs_created"
    t.string "iso"
    t.string "babip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
