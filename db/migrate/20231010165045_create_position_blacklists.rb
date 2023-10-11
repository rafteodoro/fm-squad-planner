class CreatePositionBlacklists < ActiveRecord::Migration[7.0]
  def change
    create_table :position_blacklists do |t|
      t.references :player, null: false, foreign_key: true
      t.references :position, null: false, foreign_key: true

      t.timestamps
    end
  end
end
