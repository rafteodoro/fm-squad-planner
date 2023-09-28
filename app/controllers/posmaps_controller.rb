class PosmapsController < ApplicationController
  before_action :set_posmap, only: %i[edit update]

  def edit
    @player = @posmap.player
  end

  def update
    if @posmap.update(posmap_params)
      redirect_to @posmap.player
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  private

  def set_posmap
    @posmap = Posmap.find(params[:id])
  end

  def posmap_params
    params.require(:posmap).permit(:gk, :sw, :dc, :dr, :dl, :dm, :wbr, :wbl, :mc, :mr, :ml, :amc, :amr, :aml, :st)
  end
end
