class Community < ApplicationRecord
  belongs_to :owner, class_name: "User"
  belongs_to :league
  has_many :members
  validates :community_name, presence: true
end
