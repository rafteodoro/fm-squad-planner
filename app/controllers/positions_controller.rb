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
      :tactic_id, :name, :role, :mentality, :corners, :crossing, :dribbling, :finishing, :first_touch, :free_kicks,
      :heading, :long_shots, :long_throw, :marking, :passing, :penalty_taking, :tackling, :technique, :aggression,
      :anticipation, :bravery, :composure, :concentration, :decisions, :determination, :flair, :leadership,
      :off_the_ball, :positioning, :teamwork, :vision, :work_rate, :acceleration, :agility, :balance, :jumping,
      :natural_fitness, :pace, :stamina, :strength, :aerial_reach, :command_of_area, :communication, :eccentricity,
      :handling, :kicking, :one_on_ones, :punching, :reflexes, :rushing_out, :throwing, :h_consistency,
      :h_important_matches, :h_injury_proneness, :h_dirtiness, :position_w
    )
  end

  def set_tactic
    @tactic = Tactic.find(params[:tactic_id])
  end

  def set_position
    @position = Position.find(params[:id])
  end
end
