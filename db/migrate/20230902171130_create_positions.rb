class CreatePositions < ActiveRecord::Migration[7.0]
  def change
    create_table :positions do |t|
      t.text :name
      t.text :role
      t.text :mentality
      t.float :acc_w
      t.float :agi_w
      t.float :bal_w
      t.float :jum_w
      t.float :nat_w
      t.float :pac_w
      t.float :sta_w
      t.float :str_w
      t.float :agg_w
      t.float :ant_w
      t.float :bra_w
      t.float :com_w
      t.float :con_w
      t.float :dec_w
      t.float :det_w
      t.float :fla_w
      t.float :lea_w
      t.float :otb_w
      t.float :pos_w
      t.float :tea_w
      t.float :vis_w
      t.float :wor_w
      t.float :cor_w
      t.float :cro_w
      t.float :dri_w
      t.float :fin_w
      t.float :fir_w
      t.float :fre_w
      t.float :hea_w
      t.float :lon_w
      t.float :lth_w
      t.float :mar_w
      t.float :pas_w
      t.float :pen_w
      t.float :tac_w
      t.float :tec_w
      t.float :gk_aer_w
      t.float :gk_car_w
      t.float :gk_com_w
      t.float :gk_ecc_w
      t.float :gk_han_w
      t.float :gk_kic_w
      t.float :gk_one_w
      t.float :gk_ref_w
      t.float :gk_rus_w
      t.float :gk_pun_w
      t.float :gk_thr_w
      t.float :ccy_w
      t.float :dir_w
      t.float :imp_w
      t.float :inj_w
      t.float :position_w
      t.references :tactic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
