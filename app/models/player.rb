class Player < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  validates :wins, presence: true
  validates :games_played, presence: true

  belongs_to :games
end
