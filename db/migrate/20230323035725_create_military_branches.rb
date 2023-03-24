class CreateMilitaryBranches < ActiveRecord::Migration[5.2]
  def change
    create_table :military_branches do |t|
      t.string :name
      t.boolean :sea_based
      t.integer :year_established
      t.timestamps
    end
  end
end
