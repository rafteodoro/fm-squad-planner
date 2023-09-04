# frozen_string_literal: true

# Position model
class Position < ApplicationRecord
  belongs_to :tactic

  POSITIONS = %w[GK DR DC DL WBR DM WBL MR MC ML AMR AMC AML ST].freeze

  validates :name, presence: true, inclusion: { in: POSITIONS }
end
