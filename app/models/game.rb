class Game < ApplicationRecord
  # has_many :teams
  has_and_belongs_to_many :teams
end
