class MemberGuess < ApplicationRecord
  validates :home_goals_guess, :away_goals_guess,
            presence: true, numericality: { only_integer: true }
end
