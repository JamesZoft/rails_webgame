class AddUserIdToCombatUnits < ActiveRecord::Migration
  def change
    add_column :combat_units, :user_id, :integer
  end
end
