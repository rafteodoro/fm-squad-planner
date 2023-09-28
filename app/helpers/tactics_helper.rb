module TacticsHelper
  # Returns the best player for a given position
  def get_best_player(position, players)
    # Goes through all players
    players.each do |player|
      # Finds the position map for the player
      posmap = Posmap.find_by(player_id: player.id)
      # Compares the position map with the given position
      
    end
  end


end
