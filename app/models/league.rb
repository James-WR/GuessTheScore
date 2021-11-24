class League < ApplicationRecord
  has_many :teams
  has_many :communities
  validates :team_name, presence: true
end
