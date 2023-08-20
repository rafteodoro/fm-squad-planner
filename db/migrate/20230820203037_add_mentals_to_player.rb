# frozen_string_literal: true

# This migration creates mental attributes columns
class AddMentalsToPlayer < ActiveRecord::Migration[7.0]
  def change
    add_column :players, :aggression, :integer
    add_column :players, :anticipation, :integer
    add_column :players, :bravery, :integer
    add_column :players, :composure, :integer
    add_column :players, :concentration, :integer
    add_column :players, :decisions, :integer
    add_column :players, :determination, :integer
    add_column :players, :flair, :integer
    add_column :players, :leadership, :integer
    add_column :players, :off_the_ball, :integer
    add_column :players, :positioning, :integer
    add_column :players, :teamwork, :integer
    add_column :players, :vision, :integer
    add_column :players, :work_rate, :integer
  end
end
