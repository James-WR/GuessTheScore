class Community < ApplicationRecord
  belongs_to :owner, class_name: "User"
  belongs_to :league
  has_many :members
<<<<<<< HEAD
  validates :join_code, :community_name, presence: true
=======
>>>>>>> ab15f70f83780eb4dd5654664a8fe488ee7ae91a
end
