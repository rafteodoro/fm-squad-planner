# AddFieldToPlayer adds the technical attributes to the player model
class AddFieldToPlayer < ActiveRecord::Migration[7.0]
  def change
    add_column :players, :foot_right, :text
    add_column :players, :foot_left, :text
    add_column :players, :corners, :integer
    add_column :players, :crossing, :integer
    add_column :players, :dribbling, :integer
    add_column :players, :finishing, :integer
    add_column :players, :first_touch, :integer
    add_column :players, :free_kicks, :integer
    add_column :players, :heading, :integer
    add_column :players, :long_shots, :integer
    add_column :players, :long_throw, :integer
    add_column :players, :marking, :integer
    add_column :players, :passing, :integer
    add_column :players, :penalty_taking, :integer
    add_column :players, :tackling, :integer
    add_column :players, :technique, :integer
  end
end
