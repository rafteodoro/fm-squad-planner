# frozen_string_literal: true

# CsvImportService is responsible for importing CSV files
class CsvImportService
  require 'csv'

  def call(file)
    opened_file = File.open(file)
    options = { headers: true, col_sep: ',' }
    CSV.foreach(opened_file, **options) do |row|
      # map the CSV columns to your database columns
      player_hash = {}
      player_hash[:id] = row['UID']
      player_hash[:name] = row['Name']
      player_hash[:age] = row['Age'].to_i
      player_hash[:position] = row['Position']
      player_hash[:personality] = row['Personality']
      player_hash = addTechnicalFields(player_hash, row)
      player_hash = addMentalFields(player_hash, row)
      player_hash = addPhysicalFields(player_hash, row)
      player_hash = addGoalkeeperFields(player_hash, row)

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

      # for performance, you could create a separate job to import each user
      # CsvImportJob.perform_later(user_hash)
    end
  end

  def addTechnicalFields(player_hash, row)
    player_hash[:foot_right] = row['Right Foot']
    player_hash[:foot_left] = row['Left Foot']
    player_hash[:corners] = row['Cor'].to_i
    player_hash[:crossing] = row['Cro'].to_i
    player_hash[:dribbling] = row['Dri'].to_i
    player_hash[:finishing] = row['Fin'].to_i
    player_hash[:first_touch] = row['Fir'].to_i
    player_hash[:free_kicks] = row['Fre'].to_i
    player_hash[:heading] = row['Hea'].to_i
    player_hash[:long_shots] = row['Lon'].to_i
    player_hash[:long_throw] = row['L Th'].to_i
    player_hash[:marking] = row['Mar'].to_i
    player_hash[:passing] = row['Pas'].to_i
    player_hash[:penalty_taking] = row['Pen'].to_i
    player_hash[:tackling] = row['Tck'].to_i
    player_hash[:technique] = row['Tec'].to_i

    player_hash
  end

  def addMentalFields(player_hash, row)
    player_hash[:aggression] = row['Agg'].to_i
    player_hash[:anticipation] = row['Ant'].to_i
    player_hash[:bravery] = row['Bra'].to_i
    player_hash[:composure] = row['Cmp'].to_i
    player_hash[:concentration] = row['Cnt'].to_i
    player_hash[:decisions] = row['Dec'].to_i
    player_hash[:determination] = row['Det'].to_i
    player_hash[:flair] = row['Fla'].to_i
    player_hash[:leadership] = row['Ldr'].to_i
    player_hash[:off_the_ball] = row['OtB'].to_i
    player_hash[:positioning] = row['Pos'].to_i
    player_hash[:teamwork] = row['Tea'].to_i
    player_hash[:vision] = row['Vis'].to_i
    player_hash[:work_rate] = row['Wor'].to_i

    player_hash
  end

  def addPhysicalFields(player_hash, row)
    player_hash[:acceleration] = row['Acc'].to_i
    player_hash[:agility] = row['Agi'].to_i
    player_hash[:balance] = row['Bal'].to_i
    player_hash[:jumping] = row['Jum'].to_i
    player_hash[:natural_fitness] = row['Nat'].to_i
    player_hash[:pace] = row['Pac'].to_i
    player_hash[:stamina] = row['Sta'].to_i
    player_hash[:strength] = row['Str'].to_i

    player_hash
  end

  def addGoalkeeperFields(player_hash, row)
    player_hash[:aerial_reach] = row['Aer'].to_i
    player_hash[:command_of_area] = row['Cmd'].to_i
    player_hash[:communication] = row['Com'].to_i
    player_hash[:eccentricity] = row['Ecc'].to_i
    player_hash[:handling] = row['Han'].to_i
    player_hash[:kicking] = row['Kic'].to_i
    player_hash[:one_on_ones] = row['1v1'].to_i
    player_hash[:punching] = row['Pun'].to_i
    player_hash[:reflexes] = row['Ref'].to_i
    player_hash[:rushing_out] = row['TRO'].to_i
    player_hash[:throwing] = row['Thr'].to_i

    player_hash
  end
end
