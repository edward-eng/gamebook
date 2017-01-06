class Friendship < ApplicationRecord
  belongs_to :accepting_friend, foreign_key: :accepting_id, class_name: "User"
  belongs_to :requesting_friend, foreign_key: :requesting_id, class_name: "User"

  validates_uniqueness_of :accepting_id, :scope => [:requesting_id]

end
