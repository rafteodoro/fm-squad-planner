# Purpose: Import a HTML file and convert it to a hash
class HtmlImportService
  require 'nokogiri'

  def call(file)
    doc = Nokogiri::HTML.parse(file)

    # go through the table rows
    doc.css('tr').each do |row|
      # skip the first row if the first column is a tr
      next if row.css('th').any?
      player_hash = {}
      player_hash[:id] = row.css('td').first.text.to_i
      player_hash[:name] = row.css('td')[1].text
      player_hash[:age] = row.css('td')[2].text.to_i
      player_hash[:position] = row.css('td')[3].text
      player_hash[:personality] = row.css('td')[4].text
      player_hash = addTechnicalFields(player_hash, row)
      player_hash = addMentalFields(player_hash, row)
      player_hash = addPhysicalFields(player_hash, row)
      player_hash = addGoalkeeperFields(player_hash, row)

      PlayerCreatorService.create_player(player_hash)
    end

  end

  private

  def addTechnicalFields(player_hash, row)
    player_hash[:foot_right] = row.css('td')[5].text
    player_hash[:foot_left] = row.css('td')[6].text
    player_hash[:corners] = row.css('td')[7].text.to_i
    player_hash[:crossing] = row.css('td')[8].text.to_i
    player_hash[:dribbling] = row.css('td')[9].text.to_i
    player_hash[:finishing] = row.css('td')[10].text.to_i
    player_hash[:first_touch] = row.css('td')[11].text.to_i
    player_hash[:free_kicks] = row.css('td')[12].text.to_i
    player_hash[:heading] = row.css('td')[13].text.to_i
    player_hash[:long_shots] = row.css('td')[14].text.to_i
    player_hash[:long_throw] = row.css('td')[15].text.to_i
    player_hash[:marking] = row.css('td')[16].text.to_i
    player_hash[:passing] = row.css('td')[17].text.to_i
    player_hash[:penalty_taking] = row.css('td')[18].text.to_i
    player_hash[:tackling] = row.css('td')[19].text.to_i
    player_hash[:technique] = row.css('td')[20].text.to_i

    player_hash
  end

  def addMentalFields(player_hash, row)
    player_hash[:aggression] = row.css('td')[21].text.to_i
    player_hash[:anticipation] = row.css('td')[22].text.to_i
    player_hash[:bravery] = row.css('td')[23].text.to_i
    player_hash[:composure] = row.css('td')[24].text.to_i
    player_hash[:concentration] = row.css('td')[25].text.to_i
    player_hash[:decisions] = row.css('td')[26].text.to_i
    player_hash[:determination] = row.css('td')[27].text.to_i
    player_hash[:flair] = row.css('td')[28].text.to_i
    player_hash[:leadership] = row.css('td')[29].text.to_i
    player_hash[:off_the_ball] = row.css('td')[30].text.to_i
    player_hash[:positioning] = row.css('td')[31].text.to_i
    player_hash[:teamwork] = row.css('td')[32].text.to_i
    player_hash[:vision] = row.css('td')[33].text.to_i
    player_hash[:work_rate] = row.css('td')[34].text.to_i

    player_hash
  end

  def addPhysicalFields(player_hash, row)
    player_hash[:acceleration] = row.css('td')[35].text.to_i
    player_hash[:agility] = row.css('td')[36].text.to_i
    player_hash[:balance] = row.css('td')[37].text.to_i
    player_hash[:jumping] = row.css('td')[38].text.to_i
    player_hash[:natural_fitness] = row.css('td')[39].text.to_i
    player_hash[:pace] = row.css('td')[40].text.to_i
    player_hash[:stamina] = row.css('td')[41].text.to_i
    player_hash[:strength] = row.css('td')[42].text.to_i

    player_hash
  end

  def addGoalkeeperFields(player_hash, row)
    player_hash[:aerial_reach] = row.css('td')[43].text.to_i
    player_hash[:command_of_area] = row.css('td')[44].text.to_i
    player_hash[:communication] = row.css('td')[45].text.to_i
    player_hash[:eccentricity] = row.css('td')[46].text.to_i
    player_hash[:handling] = row.css('td')[47].text.to_i
    player_hash[:kicking] = row.css('td')[48].text.to_i
    player_hash[:one_on_ones] = row.css('td')[49].text.to_i
    player_hash[:punching] = row.css('td')[50].text.to_i
    player_hash[:reflexes] = row.css('td')[51].text.to_i
    player_hash[:rushing_out] = row.css('td')[52].text.to_i
    player_hash[:throwing] = row.css('td')[53].text.to_i

    player_hash
  end
end
