class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.references :votable, polymorphic: true, index: true
      t.integer :voter_id
      t.integer :value

      t.timestamps(null: false)
    end
  end
end
