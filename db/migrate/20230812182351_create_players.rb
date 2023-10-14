# frozen_string_literal: true

# This migration creates the Players table.
class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players, id: :integer, primary_key: :id do |t|
      t.string :name
      t.integer :age
      t.string :position
      t.string :personality
      t.string :foot_right
      t.string :foot_left
      t.integer :corners
      t.integer :crossing
      t.integer :dribbling
      t.integer :finishing
      t.integer :first_touch
      t.integer :free_kicks
      t.integer :heading
      t.integer :long_shots
      t.integer :long_throw
      t.integer :marking
      t.integer :passing
      t.integer :penalty_taking
      t.integer :tackling
      t.integer :technique
      t.integer :aggression
      t.integer :anticipation
      t.integer :bravery
      t.integer :composure
      t.integer :concentration
      t.integer :decisions
      t.integer :determination
      t.integer :flair
      t.integer :leadership
      t.integer :off_the_ball
      t.integer :positioning
      t.integer :teamwork
      t.integer :vision
      t.integer :work_rate
      t.integer :acceleration
      t.integer :agility
      t.integer :balance
      t.integer :jumping
      t.integer :natural_fitness
      t.integer :pace
      t.integer :stamina
      t.integer :strength
      t.integer :aerial_reach
      t.integer :command_of_area
      t.integer :communication
      t.integer :eccentricity
      t.integer :handling
      t.integer :kicking
      t.integer :one_on_ones
      t.integer :punching
      t.integer :reflexes
      t.integer :rushing_out
      t.integer :throwing
      t.integer :h_consistency
      t.integer :h_important_matches
      t.integer :h_injury_proneness
      t.integer :h_dirtiness

      t.timestamps
    end
  end
end
