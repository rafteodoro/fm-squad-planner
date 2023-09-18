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

ActiveRecord::Schema[7.0].define(version: 2023_09_18_191609) do
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
    t.integer "h_consistency"
    t.integer "h_important_matches"
    t.integer "h_injury_proneness"
    t.integer "h_dirtiness"
  end

  create_table "positions", force: :cascade do |t|
    t.string "name"
    t.string "role"
    t.string "mentality"
    t.float "acc_w", default: 0.0
    t.float "agi_w", default: 0.0
    t.float "bal_w", default: 0.0
    t.float "jum_w", default: 0.0
    t.float "nat_w", default: 0.0
    t.float "pac_w", default: 0.0
    t.float "sta_w", default: 0.0
    t.float "str_w", default: 0.0
    t.float "agg_w", default: 0.0
    t.float "ant_w", default: 0.0
    t.float "bra_w", default: 0.0
    t.float "com_w", default: 0.0
    t.float "con_w", default: 0.0
    t.float "dec_w", default: 0.0
    t.float "det_w", default: 0.0
    t.float "fla_w", default: 0.0
    t.float "lea_w", default: 0.0
    t.float "otb_w", default: 0.0
    t.float "pos_w", default: 0.0
    t.float "tea_w", default: 0.0
    t.float "vis_w", default: 0.0
    t.float "wor_w", default: 0.0
    t.float "cor_w", default: 0.0
    t.float "cro_w", default: 0.0
    t.float "dri_w", default: 0.0
    t.float "fin_w", default: 0.0
    t.float "fir_w", default: 0.0
    t.float "fre_w", default: 0.0
    t.float "hea_w", default: 0.0
    t.float "lon_w", default: 0.0
    t.float "lth_w", default: 0.0
    t.float "mar_w", default: 0.0
    t.float "pas_w", default: 0.0
    t.float "pen_w", default: 0.0
    t.float "tac_w", default: 0.0
    t.float "tec_w", default: 0.0
    t.float "gk_aer_w", default: 0.0
    t.float "gk_car_w", default: 0.0
    t.float "gk_com_w", default: 0.0
    t.float "gk_ecc_w", default: 0.0
    t.float "gk_han_w", default: 0.0
    t.float "gk_kic_w", default: 0.0
    t.float "gk_one_w", default: 0.0
    t.float "gk_ref_w", default: 0.0
    t.float "gk_rus_w", default: 0.0
    t.float "gk_pun_w", default: 0.0
    t.float "gk_thr_w", default: 0.0
    t.float "ccy_w", default: 0.0
    t.float "dir_w", default: 0.0
    t.float "imp_w", default: 0.0
    t.float "inj_w", default: 0.0
    t.float "position_w", default: 3.0
    t.integer "tactic_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tactic_id"], name: "index_positions_on_tactic_id"
  end

  create_table "posmaps", force: :cascade do |t|
    t.integer "gk"
    t.integer "sw"
    t.integer "dc"
    t.integer "dr"
    t.integer "dl"
    t.integer "dm"
    t.integer "wbr"
    t.integer "wbl"
    t.integer "mc"
    t.integer "mr"
    t.integer "ml"
    t.integer "amc"
    t.integer "amr"
    t.integer "aml"
    t.integer "st"
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

  add_foreign_key "positions", "tactics"
  add_foreign_key "posmaps", "players"
end
