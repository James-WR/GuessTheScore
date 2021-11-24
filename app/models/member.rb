class Member < ApplicationRecord
  belongs_to :community
  has_many :member_guesses
<<<<<<< HEAD
  validates :overall_exact, :overall_fuzzy,
            :overall_points, presence: true, numericality: { only_integer: true }
=======
>>>>>>> ab15f70f83780eb4dd5654664a8fe488ee7ae91a
end
