class Position < ApplicationRecord
  belongs_to :tactics

  validates :tactics_id, presence: true
  validates :name, presence: true
  validates :role, presence: true
  validates :mentality, presence: true
end
