# frozen_string_literal: true

# Position model
class Position < ApplicationRecord
  belongs_to :tactic
  has_many :position_blacklists, dependent: :destroy
  has_many :players, through: :position_blacklists

  POSITIONS = %w[GK DR DC DL WBR DM WBL MR MC ML AMR AMC AML ST].freeze

  validates :name, presence: true, inclusion: { in: POSITIONS }
end
