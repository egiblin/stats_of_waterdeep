class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.integer :player_number, null: false, limit: 6
      t.boolean :skullport, default: false
      t.boolean :undermountain, default: false
      t.string :winner, null: false
    end
  end
end
