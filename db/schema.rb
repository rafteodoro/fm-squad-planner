# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_08_20_204516) do
  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.integer "uid", null: false
    t.text "name"
    t.integer "age"
    t.text "position"
    t.text "personality"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "foot_right"
    t.text "foot_left"
    t.integer "corners"
    t.integer "crossing"
    t.integer "dribbling"
    t.integer "finishing"
    t.integer "first_touch"
    t.integer "free_kicks"
    t.integer "heading"
    t.integer "long_shots"
    t.integer "long_throw"
    t.integer "marking"
    t.integer "passing"
    t.integer "penalty_taking"
    t.integer "tackling"
    t.integer "technique"
    t.integer "aggression"
    t.integer "anticipation"
    t.integer "bravery"
    t.integer "composure"
    t.integer "concentration"
    t.integer "decisions"
    t.integer "determination"
    t.integer "flair"
    t.integer "leadership"
    t.integer "off_the_ball"
    t.integer "positioning"
    t.integer "teamwork"
    t.integer "vision"
    t.integer "work_rate"
    t.integer "acceleration"
    t.integer "agility"
    t.integer "balance"
    t.integer "jumping"
    t.integer "natural_fitness"
    t.integer "pace"
    t.integer "stamina"
    t.integer "strength"
  end

end
