class Vote < ApplicationRecord
  belongs_to :user, foreign_key: :voter_id
  belongs_to :votable, polymorphic: true
end
