class Fixture < ApplicationRecord
  belongs_to :league
  has_many :member_guesses
  belongs_to :league
  validates :date, :match_day, :home_team, :away_team, presence: true
  scope :with_home_results, -> { where.not(home_goals_result: nil) }
  scope :with_away_results, -> { where.not(away_goals_result: nil) }
end
