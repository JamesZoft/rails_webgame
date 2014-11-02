class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :victories
      t.integer :defeats

      t.timestamps
    end
  end
end
