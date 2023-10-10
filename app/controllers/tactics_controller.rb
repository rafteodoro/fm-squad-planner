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
    @position_blacklist = PositionBlacklist.new
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
    positions_order = %w[ST AML AMC AMR ML MC MR WBL DM WBR DL DC DR GK]
    @positions = @tactic.positions.in_order_of(:name, positions_order).all
    # Get all the positions named ST in an array
    @st = @positions.select { |position| position.name == 'ST' }
    # Get a position exactly named in the array ['AML', 'AMC', 'AMR']
    @am = @positions.select { |position| %w[AML AMC AMR].include?(position.name) }
    # Get all the ML MC and MR positions in an array
    @m = @positions.select { |position| %w[ML MC MR].include?(position.name) }
    # Get all the WBL DM and WBR positions in an array
    @dm = @positions.select { |position| %w[WBL DM WBR].include?(position.name) }
    # Get all the DL DC and DR positions in an array
    @d = @positions.select { |position| %w[DL DC DR].include?(position.name) }
    # Get all the SW positions in an array
    @sw = @positions.select { |position| position.name == 'SW' }
    # Get all the GK positions in an array
    @gk = @positions.select { |position| position.name == 'GK' }

  end
end
