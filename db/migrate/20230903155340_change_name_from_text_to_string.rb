class ChangeNameFromTextToString < ActiveRecord::Migration[7.0]
  def change
    change_column :positions, :name, :string
    change_column :positions, :role, :string
    change_column :positions, :mentality, :string
  end
end
