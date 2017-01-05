class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :name, null: false
      t.string :game_type
      t.string :pic
      t.string :description
      t.string :rules_url
      t.string :duration
      t.integer :players

      t.timestamps(null: false)
    end
  end
end
