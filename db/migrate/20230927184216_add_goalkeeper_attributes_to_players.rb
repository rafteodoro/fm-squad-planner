class AddGoalkeeperAttributesToPlayers < ActiveRecord::Migration[7.0]
  def change
    add_column :players, :aerial_reach, :integer
    add_column :players, :command_of_area, :integer
    add_column :players, :communication, :integer
    add_column :players, :eccentricity, :integer
    add_column :players, :handling, :integer
    add_column :players, :kicking, :integer
    add_column :players, :one_on_ones, :integer
    add_column :players, :punching, :integer
    add_column :players, :reflexes, :integer
    add_column :players, :rushing_out, :integer
    add_column :players, :throwing, :integer
  end
end
