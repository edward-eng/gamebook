class User < ApplicationRecord
  has_many :commments
  has_many :saved_games
  has_many :games, through: :saved_games
end
