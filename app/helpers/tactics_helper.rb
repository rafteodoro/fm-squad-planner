module TacticsHelper
  # Returns the best player for a given position
  def get_best_player(position, players)
    # Goes through all players
    players.each do |player|
      sum = 0
      # Finds the position map for the player
      posmap = Posmap.find_by(player_id: player.id)
      # Goes through all posmaps attributes to check the position rating
      posmap.attributes.each do |key, value|
        sum += (value * position.position_w) if key == position.name
      end
      # If the position attribute is of type float and it is not 0 then multiply it by the player attribute with the same name
      position.attributes.each do |key, value|
        sum += (value * player.attributes[key]) if key == position.name && value.instance_of?(Float) && value.positive?
      end


    end
  end


end
