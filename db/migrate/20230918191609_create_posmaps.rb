class CreatePosmaps < ActiveRecord::Migration[7.0]
  def change
    create_table :posmaps do |t|
      t.integer :gk, default: 1
      t.integer :sw, default: 1
      t.integer :dc, default: 1
      t.integer :dr, default: 1
      t.integer :dl, default: 1
      t.integer :dm, default: 1
      t.integer :wbr, default: 1
      t.integer :wbl, default: 1
      t.integer :mc, default: 1
      t.integer :mr, default: 1
      t.integer :ml, default: 1
      t.integer :amc, default: 1
      t.integer :amr, default: 1
      t.integer :aml, default: 1
      t.integer :st, default: 1
      t.references :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
