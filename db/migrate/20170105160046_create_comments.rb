class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :body, null: false
      t.integer :game_id
      t.integer :commenter_id

      t.timestamps(null: false)
    end
  end
end
