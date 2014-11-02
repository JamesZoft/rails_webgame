class CreateCombatUnits < ActiveRecord::Migration
  def change
    create_table :combat_units do |t|
      t.string :name 
      t.string :tech_level
      t.integer :base_attack
      t.integer :base_health
      t.integer :base_movement

      t.timestamps
    end
  end
end
