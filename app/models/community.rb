class Community < ApplicationRecord
  belongs_to :owner, class_name: "User"
  belongs_to :league
  has_many :members
end
