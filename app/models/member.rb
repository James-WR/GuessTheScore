class Member < ApplicationRecord
  belongs_to :community
  has_many :member_guesses
  validates :overall_exact, :overall_fuzzy,
            :overall_points, presence: true, numericality: { only_integer: true }
end
