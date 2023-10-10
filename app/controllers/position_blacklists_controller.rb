class PositionBlacklistsController < ApplicationController
  def hide
    @position = Position.find(position_blacklist_params[:position_id])
    @position_blacklist = PositionBlacklist.new(position_blacklist_params)
    @position_blacklist.save
    redirect_to evaluate_tactic_path(@position.tactic)
  end

  def destroy
    @position_blacklist = PositionBlacklist.find(params[:id])
    @position_blacklist.destroy
    redirect_to tactic_path(@position_blacklist.tactic)
  end

  private

  def position_blacklist_params
    params.require(:position_blacklist).permit(:position_id, :player_id)
  end
end
