class League < ApplicationRecord
  has_many :teams
  has_many :communities
<<<<<<< HEAD
  validates :league_name, presence: true
=======
>>>>>>> ab15f70f83780eb4dd5654664a8fe488ee7ae91a
end
