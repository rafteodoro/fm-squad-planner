# Frozen_string_literal: true

# This helper is used to calculate the best players for a given position
module TacticsHelper

  # Returns the three best players for a given position
  def get_best_three_players(position, players)
    best_rated_players = get_best_players(position, players)

    # Returns an array with first three players
    best_rated_players[0..2].map.with_index { |player, index| "#{index + 1} - #{player[0].name} #{player[1]}%" }
  end

  # Returns the best player for a given position
  def get_best_players(position, players)
    rated_players = []
    positionsum = positionsum(position)
    # Goes through all players
    players.each do |player|
      sum = 0
      # Finds the position map for the player
      posmap = Posmap.find_by(player_id: player.id)
      # Goes through all posmaps attributes to check the position rating
      posmap.attributes.each do |key, value|
        sum += (value * position.position_w) if key == position.name.downcase
        # debugger if position.name == "ST" && posmap.st == 20
      end
      # If the position attribute is of type float and it is not 0 then multiply it by the player same name attribute
      position.attributes.each do |key, value|
        if value.instance_of?(Float) && value.positive?
          value = 21 - value if %w[h_injury_proneness h_dirtiness eccentricity].any? { |s| key.include?(s) }
          sum += (value * player.attributes[key]) unless player.attributes[key].nil?
        end
      end
      # Calculates the rating for the player and make it a percentage with only two decimals
      rating = ((sum / positionsum) * 100).round(1)
      rated_players << [player, rating]
    end
    # Sorts the rated players by rating
    rated_players.sort_by! { |_, rating| rating }.reverse!
    # Returns the sorted array
    rated_players
  end

  private

  # Calculates the maximum sum for a given position
  def positionsum(position)
    sum = 60
    position.attributes.each do |_, value|
      sum += (value * 20) if value.instance_of?(Float) && value.positive?
    end
    sum
  end
end
