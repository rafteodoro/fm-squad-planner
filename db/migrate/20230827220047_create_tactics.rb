class CreateTactics < ActiveRecord::Migration[7.0]
  def change
    create_table :tactics do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
