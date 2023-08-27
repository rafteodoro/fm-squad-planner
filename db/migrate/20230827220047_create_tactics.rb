class CreateTactics < ActiveRecord::Migration[7.0]
  def change
    create_table :tactics do |t|
      t.text :name


      t.timestamps
    end
  end
end
