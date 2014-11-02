class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :username
      t.string :salt
      t.string :encrypted_password
      t.integer :victories
      t.integer :money
      t.string :tech_level
      t.integer :towns_held

      t.timestamps
    end
  end
end
