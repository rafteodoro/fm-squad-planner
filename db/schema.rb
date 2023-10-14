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

ActiveRecord::Schema[7.0].define(version: 2023_10_10_165045) do
  create_table "players", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "position"
    t.string "personality"
    t.string "foot_right"
    t.string "foot_left"
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
    t.integer "aerial_reach"
    t.integer "command_of_area"
    t.integer "communication"
    t.integer "eccentricity"
    t.integer "handling"
    t.integer "kicking"
    t.integer "one_on_ones"
    t.integer "punching"
    t.integer "reflexes"
    t.integer "rushing_out"
    t.integer "throwing"
    t.integer "h_consistency"
    t.integer "h_important_matches"
    t.integer "h_injury_proneness"
    t.integer "h_dirtiness"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "position_blacklists", force: :cascade do |t|
    t.integer "player_id", null: false
    t.integer "position_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_position_blacklists_on_player_id"
    t.index ["position_id"], name: "index_position_blacklists_on_position_id"
  end

  create_table "positions", force: :cascade do |t|
    t.string "name"
    t.string "role"
    t.string "mentality"
    t.float "corners", default: 0.0
    t.float "crossing", default: 0.0
    t.float "dribbling", default: 0.0
    t.float "finishing", default: 0.0
    t.float "first_touch", default: 0.0
    t.float "free_kicks", default: 0.0
    t.float "heading", default: 0.0
    t.float "long_shots", default: 0.0
    t.float "long_throw", default: 0.0
    t.float "marking", default: 0.0
    t.float "passing", default: 0.0
    t.float "penalty_taking", default: 0.0
    t.float "tackling", default: 0.0
    t.float "technique", default: 0.0
    t.float "aggression", default: 0.0
    t.float "anticipation", default: 0.0
    t.float "bravery", default: 0.0
    t.float "composure", default: 0.0
    t.float "concentration", default: 0.0
    t.float "decisions", default: 0.0
    t.float "determination", default: 0.0
    t.float "flair", default: 0.0
    t.float "leadership", default: 0.0
    t.float "off_the_ball", default: 0.0
    t.float "positioning", default: 0.0
    t.float "teamwork", default: 0.0
    t.float "vision", default: 0.0
    t.float "work_rate", default: 0.0
    t.float "acceleration", default: 0.0
    t.float "agility", default: 0.0
    t.float "balance", default: 0.0
    t.float "jumping", default: 0.0
    t.float "natural_fitness", default: 0.0
    t.float "pace", default: 0.0
    t.float "stamina", default: 0.0
    t.float "strength", default: 0.0
    t.float "aerial_reach", default: 0.0
    t.float "command_of_area", default: 0.0
    t.float "communication", default: 0.0
    t.float "eccentricity", default: 0.0
    t.float "handling", default: 0.0
    t.float "kicking", default: 0.0
    t.float "one_on_ones", default: 0.0
    t.float "punching", default: 0.0
    t.float "reflexes", default: 0.0
    t.float "rushing_out", default: 0.0
    t.float "throwing", default: 0.0
    t.float "h_consistency", default: 0.0
    t.float "h_important_matches", default: 0.0
    t.float "h_injury_proneness", default: 0.0
    t.float "h_dirtiness", default: 0.0
    t.integer "position_w", default: 3
    t.integer "tactic_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tactic_id"], name: "index_positions_on_tactic_id"
  end

  create_table "posmaps", force: :cascade do |t|
    t.integer "gk", default: 1
    t.integer "sw", default: 1
    t.integer "dc", default: 1
    t.integer "dr", default: 1
    t.integer "dl", default: 1
    t.integer "dm", default: 1
    t.integer "wbr", default: 1
    t.integer "wbl", default: 1
    t.integer "mc", default: 1
    t.integer "mr", default: 1
    t.integer "ml", default: 1
    t.integer "amc", default: 1
    t.integer "amr", default: 1
    t.integer "aml", default: 1
    t.integer "st", default: 1
    t.integer "player_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_posmaps_on_player_id"
  end

  create_table "tactics", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "position_blacklists", "players"
  add_foreign_key "position_blacklists", "positions"
  add_foreign_key "positions", "tactics"
  add_foreign_key "posmaps", "players"
end
