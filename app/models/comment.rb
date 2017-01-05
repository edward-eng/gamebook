class Comment < ApplicationRecord
  belongs_to :user, foreign_key: :commenter_id
  has_many :votes, as: :votable
end
