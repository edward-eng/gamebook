class Game < ApplicationRecord
  has_many :saved_games
  has_many :users, through: :saved_games
end
