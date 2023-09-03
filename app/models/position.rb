# frozen_string_literal: true

# Position model
class Position < ApplicationRecord
  belongs_to :tactic

  POSITIONS = %w[GK DC DR DL DM WBR WBL MC MR ML AMC AMR AML ST].freeze

  validates :name, presence: true, inclusion: { in: POSITIONS }
end
