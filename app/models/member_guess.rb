class MemberGuess < ApplicationRecord
  belongs_to :member
  belongs_to :fixture
<<<<<<< HEAD
  validates :home_goals_guess, :away_goals_guess,
            presence: true, numericality: { only_integer: true }
=======
>>>>>>> ab15f70f83780eb4dd5654664a8fe488ee7ae91a
end
