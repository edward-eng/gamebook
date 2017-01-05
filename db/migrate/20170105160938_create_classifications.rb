class CreateClassifications < ActiveRecord::Migration[5.0]
  def change
    create_table :classifications do |t|
      t.integer :category_id
      t.integer :game_id

      t.timestamps(null: false)
    end
  end
end
