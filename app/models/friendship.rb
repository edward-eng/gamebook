class Friendship < ApplicationRecord
  belongs_to :accepting_friend, foreign_key: :accepting_id, class_name: "User"
  belongs_to :requesting_friend, foreign_key: :requesting_id, class_name: "User"
end
