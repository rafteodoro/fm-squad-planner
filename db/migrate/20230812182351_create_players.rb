# frozen_string_literal: true

# This migration creates the Players table.
class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.integer :uid
      t.text :name
      t.integer :age
      t.text :position
      t.text :personality

      t.timestamps
    end
  end
end
