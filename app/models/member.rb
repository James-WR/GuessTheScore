class Member < ApplicationRecord
  belongs_to :community
  belongs_to :user
  has_many :member_guesses
end
