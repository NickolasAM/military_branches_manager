class CreateAircrafts < ActiveRecord::Migration[5.2]
  def change
    create_table :aircrafts do |t|
      t.references :military_branch, foreign_key: true
      t.string :name
      t.boolean :fixed_wing
      t.integer :pilot_count
      t.timestamps
    end
  end
end
