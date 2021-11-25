class Fixture < ApplicationRecord
  belongs_to :league
  has_many :member_guesses
  belongs_to :league
  validates :date, :match_day, :home_team, :away_team, presence: true
end
