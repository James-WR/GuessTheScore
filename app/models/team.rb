class Team < ApplicationRecord
  belongs_to :league
  has_many :fixtures
<<<<<<< HEAD
  validates :team_name, presence: true
=======
>>>>>>> ab15f70f83780eb4dd5654664a8fe488ee7ae91a
end
