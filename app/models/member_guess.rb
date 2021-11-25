class MemberGuess < ApplicationRecord
  belongs_to :member
  belongs_to :fixture
  validates :home_goals_guess, :away_goals_guess,
            presence: true, numericality: { only_integer: true }
end
