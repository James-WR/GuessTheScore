class Member < ApplicationRecord
  validates :overall_exact, :overall_fuzzy,
            :overall_points, presence: true, numericality: { only_integer: true }
end
