# frozen_string_literal: true

# Helper methods for the Players controller.
module PlayersHelper
  # Retrieve the player posmap
  def player_posmap(player)
    string = ''
    posmap = Posmap.find_by(player_id: player.id)
    playable_positions(posmap).each do |position|
      string = "#{string} #{position}"
    end
    string
  end
end
