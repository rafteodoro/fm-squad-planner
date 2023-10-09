# frozen_string_literal: true

# PlayersController is responsible for handling requests for the Player model.
class PlayersController < ApplicationController
  before_action :set_player, only: %i[show edit update destroy]

  def index
    @players = Player.all
  end

  def show
    @posmap = Posmap.find_by(player_id: @player.id)
  end

  def edit; end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)

    if @player.save
      posmap = Posmap.new(player_id: @player.id)
      posmap.save
      redirect_to @player, notice: 'Player was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @player.update(player_params)
      redirect_to @player, notice: 'Player was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @player.destroy
    redirect_to players_url, notice: 'Player was successfully destroyed.'
  end

  def import
    return redirect_to request.referer, notice: 'No file added' if params[:file].nil?
    return redirect_to request.referer, notice: 'Only CSV files allowed' unless params[:file].content_type == 'text/csv'

    CsvImportService.new.call(params[:file])

    redirect_to request.referer, notice: 'Import started...'
  end

  private

  def set_player
    @player = Player.find(params[:id])
  end

  def player_params
    params.require(:player).permit(:name, :age, :position, :corners, :crossing, :dribbling, :finishing, :first_touch,
                                   :free_kicks, :heading, :long_shots, :long_throw, :marking, :passing, :penalty_taking,
                                   :tackling, :technique, :aggression, :anticipation, :bravery, :composure,
                                   :concentration, :decisions, :determination, :flair, :leadership, :off_the_ball,
                                   :positioning, :teamwork, :vision, :work_rate, :acceleration, :agility, :balance,
                                   :jumping, :natural_fitness, :pace, :stamina, :strength, :h_consistency, :h_dirtiness,
                                   :h_important_matches, :h_injury_proneness, :aerial_reach, :command_of_area,
                                   :communication, :eccentricity, :handling, :kicking, :one_on_ones, :punching,
                                   :reflexes, :rushing_out, :throwing, :uid)
  end
end
