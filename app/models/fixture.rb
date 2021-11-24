class Fixture < ApplicationRecord
  has_many :member_guesses
  validates :date, :match_week, presence: true
  validates :home_goals_result, :away_goals_result,
            presence: true, numericality: { only_integer: true }
end
