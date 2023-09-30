class CreatePositions < ActiveRecord::Migration[7.0]
  def change
    create_table :positions do |t|
      t.string :name
      t.string :role
      t.string :mentality
      t.float :corners, default: 0.0
      t.float :crossing, default: 0.0
      t.float :dribbling, default: 0.0
      t.float :finishing, default: 0.0
      t.float :first_touch, default: 0.0
      t.float :free_kicks, default: 0.0
      t.float :heading, default: 0.0
      t.float :long_shots, default: 0.0
      t.float :long_throw, default: 0.0
      t.float :marking, default: 0.0
      t.float :passing, default: 0.0
      t.float :penalty_taking, default: 0.0
      t.float :tackling, default: 0.0
      t.float :technique, default: 0.0
      t.float :aggression, default: 0.0
      t.float :anticipation, default: 0.0
      t.float :bravery, default: 0.0
      t.float :composure, default: 0.0
      t.float :concentration, default: 0.0
      t.float :decisions, default: 0.0
      t.float :determination, default: 0.0
      t.float :flair, default: 0.0
      t.float :leadership, default: 0.0
      t.float :off_the_ball, default: 0.0
      t.float :positioning, default: 0.0
      t.float :teamwork, default: 0.0
      t.float :vision, default: 0.0
      t.float :work_rate, default: 0.0
      t.float :acceleration, default: 0.0
      t.float :agility, default: 0.0
      t.float :balance, default: 0.0
      t.float :jumping, default: 0.0
      t.float :natural_fitness, default: 0.0
      t.float :pace, default: 0.0
      t.float :stamina, default: 0.0
      t.float :strength, default: 0.0
      t.float :aerial_reach, default: 0.0
      t.float :command_of_area, default: 0.0
      t.float :communication, default: 0.0
      t.float :eccentricity, default: 0.0
      t.float :handling, default: 0.0
      t.float :kicking, default: 0.0
      t.float :one_on_ones, default: 0.0
      t.float :punching, default: 0.0
      t.float :reflexes, default: 0.0
      t.float :rushing_out, default: 0.0
      t.float :throwing, default: 0.0
      t.float :h_consistency, default: 0.0
      t.float :h_important_matches, default: 0.0
      t.float :h_injury_proneness, default: 0.0
      t.float :h_dirtiness, default: 0.0
      t.integer :position_w, default: 3
      t.references :tactic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
