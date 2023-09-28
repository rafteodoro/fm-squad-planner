class CreatePositions < ActiveRecord::Migration[7.0]
  def change
    create_table :positions do |t|
      t.string :name
      t.string :role
      t.string :mentality
      t.float :acc_w, default: 0.0
      t.float :agi_w, default: 0.0
      t.float :bal_w, default: 0.0
      t.float :jum_w, default: 0.0
      t.float :nat_w, default: 0.0
      t.float :pac_w, default: 0.0
      t.float :sta_w, default: 0.0
      t.float :str_w, default: 0.0
      t.float :agg_w, default: 0.0
      t.float :ant_w, default: 0.0
      t.float :bra_w, default: 0.0
      t.float :com_w, default: 0.0
      t.float :con_w, default: 0.0
      t.float :dec_w, default: 0.0
      t.float :det_w, default: 0.0
      t.float :fla_w, default: 0.0
      t.float :lea_w, default: 0.0
      t.float :otb_w, default: 0.0
      t.float :pos_w, default: 0.0
      t.float :tea_w, default: 0.0
      t.float :vis_w, default: 0.0
      t.float :wor_w, default: 0.0
      t.float :cor_w, default: 0.0
      t.float :cro_w, default: 0.0
      t.float :dri_w, default: 0.0
      t.float :fin_w, default: 0.0
      t.float :fir_w, default: 0.0
      t.float :fre_w, default: 0.0
      t.float :hea_w, default: 0.0
      t.float :lon_w, default: 0.0
      t.float :lth_w, default: 0.0
      t.float :mar_w, default: 0.0
      t.float :pas_w, default: 0.0
      t.float :pen_w, default: 0.0
      t.float :tac_w, default: 0.0
      t.float :tec_w, default: 0.0
      t.float :gk_aer_w, default: 0.0
      t.float :gk_car_w, default: 0.0
      t.float :gk_com_w, default: 0.0
      t.float :gk_ecc_w, default: 0.0
      t.float :gk_han_w, default: 0.0
      t.float :gk_kic_w, default: 0.0
      t.float :gk_one_w, default: 0.0
      t.float :gk_ref_w, default: 0.0
      t.float :gk_rus_w, default: 0.0
      t.float :gk_pun_w, default: 0.0
      t.float :gk_thr_w, default: 0.0
      t.float :ccy_w, default: 0.0
      t.float :dir_w, default: 0.0
      t.float :imp_w, default: 0.0
      t.float :inj_w, default: 0.0
      t.float :position_w, default: 3.0
      t.references :tactic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
