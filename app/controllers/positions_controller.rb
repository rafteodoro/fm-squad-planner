# frozen_string_literal: true

# Purpose: Controller for the Position model.
class PositionsController < ApplicationController
  before_action :set_tactic, only: %i[new create]
  before_action :set_position, only: %i[show destroy edit update]

  def show
    @tactic = Tactic.find(@position.tactic_id)
  end

  def new
    @position = Position.new
  end

  def edit
    @tactic = Tactic.find(@position.tactic_id)
  end

  def update
    if @position.update(position_params)
      redirect_to position_path(@position)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def create
    @position = Position.new(position_params)
    @position.tactic = @tactic
    if @position.save
      redirect_to tactic_path(@tactic)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @position.destroy
    redirect_to tactic_path(@position.tactic)
  end

  private

  def position_params
    params.require(:position).permit(
      :tactic_id, :name, :role, :mentality, :acc_w, :agi_w, :bal_w, :jum_w,
      :nat_w, :pac_w, :sta_w, :str_w, :agg_w, :ant_w, :bra_w, :com_w, :con_w,
      :dec_w, :det_w, :fla_w, :lea_w, :otb_w, :pos_w, :tea_w, :vis_w, :wor_w,
      :cor_w, :cro_w, :dri_w, :fin_w, :fir_w, :fre_w, :hea_w, :lon_w, :lth_w,
      :mar_w, :pas_w, :pen_w, :tac_w, :tec_w, :gk_aer_w, :gk_car_w, :gk_com_w,
      :gk_ecc_w, :gk_han_w, :gk_kic_w, :gk_one_w, :gk_ref_w, :gk_rus_w,
      :gk_pun_w, :gk_thr_w, :ccy_w, :dir_w, :imp_w, :inj_w
    )
  end

  def set_tactic
    @tactic = Tactic.find(params[:tactic_id])
  end

  def set_position
    @position = Position.find(params[:id])
  end
end
