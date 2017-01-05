class Category < ApplicationRecord
  has_many :classifications
  has_many :games, through: :classifications
end
