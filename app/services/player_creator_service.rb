class PlayerCreatorService
  def self.create_player(player_hash)
    if player_hash[:name].nil? == false
      player = Player.find_or_initialize_by(id: player_hash[:id])
      player.update(player_hash)
      # Find out if the player already has a posmap
      if Posmap.find_by(player_id: player.id).nil?
        # Create a posmap for the player created
        posmap = Posmap.new
        posmap.player_id = player.id
        posmap.save
      end
    end
  end
end
