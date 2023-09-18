# frozen_string_literal: true

# Posmap model is a one-to-one relationship with the Player model. It contains the positional map of the player.
class Posmap < ApplicationRecord
  belongs_to :player
end
