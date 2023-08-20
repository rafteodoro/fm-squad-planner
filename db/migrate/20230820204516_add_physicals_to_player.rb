class AddPhysicalsToPlayer < ActiveRecord::Migration[7.0]
  def change
    add_column :players, :acceleration, :integer
    add_column :players, :agility, :integer
    add_column :players, :balance, :integer
    add_column :players, :jumping, :integer
    add_column :players, :natural_fitness, :integer
    add_column :players, :pace, :integer
    add_column :players, :stamina, :integer
    add_column :players, :strength, :integer
  end
end
