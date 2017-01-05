class CreateSavedGames < ActiveRecord::Migration[5.0]
  def change
    create_table :saved_games do |t|
      t.integer :game_id
      t.integer :user_id

      t.timestamps(null: false)
    end
  end
end
