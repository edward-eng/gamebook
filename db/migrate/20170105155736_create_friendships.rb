class CreateFriendships < ActiveRecord::Migration[5.0]
  def change
    create_table :friendships do |t|
      t.integer :friend_id
      t.integer :other_friend_id
      t.boolean :pending_request, default: true

      t.timestamps(null: false)
    end
  end
end
