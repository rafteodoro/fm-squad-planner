class AddHiddenAttributesToPlayers < ActiveRecord::Migration[7.0]
  def change
    add_column :players, :h_consistency, :integer
    add_column :players, :h_important_matches, :integer
    add_column :players, :h_injury_proneness, :integer
    add_column :players, :h_dirtiness, :integer
  end
end
