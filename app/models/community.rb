class Community < ApplicationRecord
  belongs_to :user
  belongs_to :league
  has_many :members
end
