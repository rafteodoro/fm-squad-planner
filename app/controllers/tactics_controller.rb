class TacticsController < ApplicationController
  before_action :set_positions, only: %i[show evaluate]
  def index
    @tactics = Tactic.all
  end

  def new
    @tactic = Tactic.new
  end

  def create
    @tactic = Tactic.new(tactic_params)
    if @tactic.save
      redirect_to tactics_path
    else
      render :new
    end
  end

  def show; end

  def evaluate
    @players = Player.all
  end

  def destroy
    @tactic = Tactic.find(params[:id])
    @tactic.destroy
    redirect_to tactics_path
  end

  private

  def tactic_params
    params.require(:tactic).permit(:name)
  end

  def set_positions
    @tactic = Tactic.find(params[:id])
    positions_order = %w[GK DR DC DL WBR DM WBL MR MC ML AMR AMC AML ST]
    @positions = @tactic.positions.in_order_of(:name, positions_order).all
  end
end
