class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :name, null: false
      t.integer :games, null: false, default: 0
      t.integer :wins, null: false, default: 0

      t.timestamps
    end
  end
end
