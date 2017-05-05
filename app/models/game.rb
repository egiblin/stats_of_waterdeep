class Game < ApplicationRecord
  validates :player_number, presence: true

  has_one :winner, class_name: "Player"
end
