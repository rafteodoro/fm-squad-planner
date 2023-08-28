class ChangeNameInTactics < ActiveRecord::Migration[7.0]
  def change
    change_column :tactics, :name, :string, null: false
  end
end
