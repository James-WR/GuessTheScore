class Member < ApplicationRecord
  belongs_to :community
  belongs_to :user
  has_many :member_guesses
  validates :overall_exact, :overall_fuzzy,
            :overall_points, presence: true, numericality: { only_integer: true }
  # after_create :create_member_guesses
  # def create_member_guesses
  #   Fixture.where(league_id: 1, match_day: 13).each do |fixture|
  #     MemberGuess.create(
  #       home_goals_guess: 0,
  #       away_goals_guess: 0,
  #       member_id: id,
  #       fixture_id: fixture.id
  #     )
  #   end
  # end
end
