class Team < ApplicationRecord
  belongs_to :league
  has_many :fixtures
  validates :team_name, presence: true
end
