class PositionBlacklistsController < ApplicationController
  def hide
    @position = Position.find(position_blacklist_params[:position_id])
    @position_blacklist = PositionBlacklist.new(position_blacklist_params)
    @position_blacklist.save
    redirect_to evaluate_tactic_path(@position.tactic)
  end

  def show_all_players
    @position = Position.find(params[:position_id])
    @position_blacklists = PositionBlacklist.where(position_id: @position.id)
    @position_blacklists.destroy_all
    redirect_to evaluate_tactic_path(@position.tactic)
  end

  private

  def position_blacklist_params
    params.require(:position_blacklist).permit(:position_id, :player_id)
  end
end
