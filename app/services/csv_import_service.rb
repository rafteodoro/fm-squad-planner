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
      player_hash[:uid] = row['UID']
      player_hash[:name] = row['Name']
      player_hash[:age] = row['Age'].to_i
      player_hash[:position] = row['Position']
      player_hash[:personality] = row['Personality']
      player_hash = addTechnicalFields(player_hash, row)
      player_hash = addMentalFields(player_hash, row)
      player_hash = addPhysicalFields(player_hash, row)
      player_hash = addGoalkeeperFields(player_hash, row)

      if player_hash[:name].nil? == false
        Player.find_or_create_by!(player_hash)
        # Create a posmap for the player created
        player = Player.find_by(uid: player_hash[:uid])
        posmap = Posmap.new
        posmap.player_id = player.id
        posmap.save
      end

      # for performance, you could create a separate job to import each user
      # CsvImportJob.perform_later(user_hash)
    end
  end

  def addTechnicalFields(player_hash, row)
    player_hash[:foot_right] = row['Right Foot']
    player_hash[:foot_left] = row['Left Foot']
    player_hash[:corners] = row['Corners'].to_i
    player_hash[:crossing] = row['Crossing'].to_i
    player_hash[:dribbling] = row['Dribbling'].to_i
    player_hash[:finishing] = row['Finishing'].to_i
    player_hash[:first_touch] = row['First Touch'].to_i
    player_hash[:free_kicks] = row['Free Kicks'].to_i
    player_hash[:heading] = row['Heading'].to_i
    player_hash[:long_shots] = row['Long Shots'].to_i
    player_hash[:long_throw] = row['Long Throw'].to_i
    player_hash[:marking] = row['Marking'].to_i
    player_hash[:passing] = row['Passing'].to_i
    player_hash[:penalty_taking] = row['Penalty Taking'].to_i
    player_hash[:tackling] = row['Tackling'].to_i
    player_hash[:technique] = row['Technique'].to_i

    player_hash
  end

  def addMentalFields(player_hash, row)
    player_hash[:aggression] = row['Aggression'].to_i
    player_hash[:anticipation] = row['Anticipation'].to_i
    player_hash[:bravery] = row['Bravery'].to_i
    player_hash[:composure] = row['Composure'].to_i
    player_hash[:concentration] = row['Concentration'].to_i
    player_hash[:decisions] = row['Decisions'].to_i
    player_hash[:determination] = row['Determination'].to_i
    player_hash[:flair] = row['Flair'].to_i
    player_hash[:leadership] = row['Leadership'].to_i
    player_hash[:off_the_ball] = row['Off the Ball'].to_i
    player_hash[:positioning] = row['Positioning'].to_i
    player_hash[:teamwork] = row['Teamwork'].to_i
    player_hash[:vision] = row['Vision'].to_i
    player_hash[:work_rate] = row['Work Rate'].to_i

    player_hash
  end

  def addPhysicalFields(player_hash, row)
    player_hash[:acceleration] = row['Acceleration'].to_i
    player_hash[:agility] = row['Agility'].to_i
    player_hash[:balance] = row['Balance'].to_i
    player_hash[:jumping] = row['Jumping'].to_i
    player_hash[:natural_fitness] = row['Natural Fitness'].to_i
    player_hash[:pace] = row['Pace'].to_i
    player_hash[:stamina] = row['Stamina'].to_i
    player_hash[:strength] = row['Strength'].to_i

    player_hash
  end

  def addGoalkeeperFields(player_hash, row)
    player_hash[:aerial_reach] = row['Aerial Reach'].to_i
    player_hash[:command_of_area] = row['Command Of Area'].to_i
    player_hash[:communication] = row['Communication'].to_i
    player_hash[:eccentricity] = row['Eccentricity'].to_i
    player_hash[:handling] = row['Handling'].to_i
    player_hash[:kicking] = row['Kicking'].to_i
    player_hash[:one_on_ones] = row['One On Ones'].to_i
    player_hash[:punching] = row['Punching'].to_i
    player_hash[:reflexes] = row['Reflexes'].to_i
    player_hash[:rushing_out] = row['Rushing Out'].to_i
    player_hash[:throwing] = row['Throwing'].to_i

    player_hash
  end
end
