# frozen_string_literal: true

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
      puts "[DB]UID: #{row['UID']}"
      puts "[DB]Name: #{row['Name']}"
      puts "[DB]Age: #{row['Age']}"
      puts "[DB]Position: #{row['Position']}"
      puts "[DB]Personality: #{row['Personality']}"
      puts player_hash[:uid]
      puts player_hash[:name]
      puts player_hash[:age]
      puts player_hash[:position]
      puts player_hash[:personality]


      if player_hash[:name].nil? == false
        Player.find_or_create_by!(player_hash)
      end
      # for performance, you could create a separate job to import each user
      # CsvImportJob.perform_later(user_hash)
    end
  end
end
