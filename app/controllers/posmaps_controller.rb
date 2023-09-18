class PosmapsController < ApplicationController
  before_action :set_player, only: %i[new create]

  def new
    @posmap = Posmap.new
  end

  def create
    @posmap = Posmap.new(posmap_params)
    @posmap.player = @player
    if @posmap.save
      redirect_to @posmap
    else
      render 'new', status: :unprocessable_entity
    end
  end

  private

  def set_player
    @player = Player.find(params[:player_id])
  end

  def posmap_params
    params.require(:posmap).permit(:gk, :sw, :dc, :dr, :dl, :dm, :wbr, :wbl, :mc, :mr, :ml, :amc, :amr, :aml, :st)
  end
end
