class Game < ApplicationRecord
  has_many :saved_games
  has_many :users, through: :saved_games
  has_many :classifications
  has_many :categories, through: :classifications
  has_many :votes, as: :votable
end
