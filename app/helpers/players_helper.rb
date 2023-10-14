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

  # Color the player's attributes based on their value
  def attribute_class(value)
    return '' if value.nil?

    case value
    when 1..5 then 'low' # red
    when 6..10 then 'average' # blue
    when 11..15 then 'good' # yellow
    when 16..20 then 'excellent' # green
    end
  end

  # Reverse the attributes that low is good and high is bad
  def reverse_attribute_class(value)
    return '' if value.nil?

    case value
    when 1..5 then 'excellent' # green
    when 6..10 then 'good' # yellow
    when 11..15 then 'average' # blue
    when 16..20 then 'low' # red
    end
  end

  # Color the player's age if it's 30 or greater
  def age_class(age)
    return '' if age.nil?

    age >= 30 ? 'text-danger' : ''
  end

  # Check if the player's hidden attributes are completed
  def hidden_attributes_completed?(player)
    if [player.h_consistency, player.h_important_matches, player.h_injury_proneness, player.h_dirtiness].any?(&:nil?)
      'Incomplete'
    end
  end
end
