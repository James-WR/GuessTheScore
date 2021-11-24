class Member < ApplicationRecord
  belongs_to :community
  has_many :member_guesses
end
