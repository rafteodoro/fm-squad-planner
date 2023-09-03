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

ActiveRecord::Schema[7.0].define(version: 2023_09_03_155340) do
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

  create_table "positions", force: :cascade do |t|
    t.string "name"
    t.string "role"
    t.string "mentality"
    t.float "acc_w"
    t.float "agi_w"
    t.float "bal_w"
    t.float "jum_w"
    t.float "nat_w"
    t.float "pac_w"
    t.float "sta_w"
    t.float "str_w"
    t.float "agg_w"
    t.float "ant_w"
    t.float "bra_w"
    t.float "com_w"
    t.float "con_w"
    t.float "dec_w"
    t.float "det_w"
    t.float "fla_w"
    t.float "lea_w"
    t.float "otb_w"
    t.float "pos_w"
    t.float "tea_w"
    t.float "vis_w"
    t.float "wor_w"
    t.float "cor_w"
    t.float "cro_w"
    t.float "dri_w"
    t.float "fin_w"
    t.float "fir_w"
    t.float "fre_w"
    t.float "hea_w"
    t.float "lon_w"
    t.float "lth_w"
    t.float "mar_w"
    t.float "pas_w"
    t.float "pen_w"
    t.float "tac_w"
    t.float "tec_w"
    t.float "gk_aer_w"
    t.float "gk_car_w"
    t.float "gk_com_w"
    t.float "gk_ecc_w"
    t.float "gk_han_w"
    t.float "gk_kic_w"
    t.float "gk_one_w"
    t.float "gk_ref_w"
    t.float "gk_rus_w"
    t.float "gk_pun_w"
    t.float "gk_thr_w"
    t.float "ccy_w"
    t.float "dir_w"
    t.float "imp_w"
    t.float "inj_w"
    t.float "position_w"
    t.integer "tactic_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tactic_id"], name: "index_positions_on_tactic_id"
  end

  create_table "tactics", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "positions", "tactics"
end
