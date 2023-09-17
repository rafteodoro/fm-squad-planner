# Tactic model is the model that represents the tactics that the user can create
class Tactic < ApplicationRecord
  has_many :positions, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
