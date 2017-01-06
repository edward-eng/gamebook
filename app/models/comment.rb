class Comment < ApplicationRecord
  belongs_to :user, foreign_key: :commenter_id
  has_many :votes, as: :votable
  belongs_to :game
end
