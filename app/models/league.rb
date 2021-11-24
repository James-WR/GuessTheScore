class League < ApplicationRecord
  has_many :teams
  has_many :communities
  validates :league_name, presence: true
end
