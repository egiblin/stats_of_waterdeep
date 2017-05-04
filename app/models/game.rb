class Game < ApplicationRecord
  validates :player_number, presence: true
  validates :winner, presence: true

end
