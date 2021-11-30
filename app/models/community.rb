class Community < ApplicationRecord
  belongs_to :owner, class_name: "User"
  belongs_to :league
  has_many :members
  validates :community_name, presence: true

  # after_create :create_member
  #
  # def create_member
  #   Member.create(user: owner, community: self, overall_exact: 0, overall_fuzzy: 0, overall_points: 0)
  # end
end
