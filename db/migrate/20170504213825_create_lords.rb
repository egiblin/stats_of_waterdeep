class CreateLords < ActiveRecord::Migration[5.0]
  def change
    create_table :lords do |t|
      t.string :name, null: false
      t.string :game_box
      t.boolean :quests
      t.string :bonus_description, array: true, default: []
      t.string :description
      t.integer :games, null: false, default: 0
      t.integer :wins, null: false, default: 0

      t.timestamps
    end
  end
end
