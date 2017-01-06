class User < ApplicationRecord
  validates :name, :email, :hashed_password, presence: true
  validates :email, format: { with: /\A[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}\z/ }

  has_many :comments, foreign_key: :commenter_id
  has_many :saved_games
  has_many :games, through: :saved_games
  has_many :accepted_friendships, foreign_key: :accepting_id, class_name: "Friendship"
  has_many :requested_friendships, foreign_key: :requesting_id, class_name: "Friendship"
  has_many :requests, through: :requested_friendships, source: :requesting_friend
  has_many :accepts, through: :accepted_friendships, source: :accepting_friend
  has_many :votes, foreign_key: :voter_id

  def password
    @password ||= BCrypt::Password.new(hashed_password)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.hashed_password = @password
  end

  def authenticate(password)
    self.password == password
  end
end
