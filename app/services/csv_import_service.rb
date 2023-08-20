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

      Player.find_or_create_by!(player_hash) if player_hash[:name].nil? == false
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
    player_hash[:long_throw] = row['Long Throws'].to_i
    player_hash[:marking] = row['Marking'].to_i
    player_hash[:passing] = row['Passing'].to_i
    player_hash[:penalty_taking] = row['Penalty Taking'].to_i
    player_hash[:tackling] = row['Tackling'].to_i
    player_hash[:technique] = row['Technique'].to_i

    player_hash
  end
end
