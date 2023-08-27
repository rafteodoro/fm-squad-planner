# frozen_string_literal: true

# Player model is the main model for the app. It contains all the attributes of a player.
# It also contains validations for the attributes.
class Player < ApplicationRecord
  validates :name, presence: true
  validates :uid, uniqueness: true, presence: true
end
