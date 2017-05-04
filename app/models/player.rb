class Player < ApplicationRecord
  validates :name, presence: true
  validates :wins, presence: true
  validates :games, presence: true

end
