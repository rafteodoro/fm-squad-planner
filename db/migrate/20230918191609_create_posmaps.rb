class CreatePosmaps < ActiveRecord::Migration[7.0]
  def change
    create_table :posmaps do |t|
      t.integer :gk
      t.integer :sw
      t.integer :dc
      t.integer :dr
      t.integer :dl
      t.integer :dm
      t.integer :wbr
      t.integer :wbl
      t.integer :mc
      t.integer :mr
      t.integer :ml
      t.integer :amc
      t.integer :amr
      t.integer :aml
      t.integer :st
      t.references :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
