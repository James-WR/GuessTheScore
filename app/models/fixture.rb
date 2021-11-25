class Fixture < ApplicationRecord
  has_many :member_guesses
  validates :date, :match_day, presence: true
end
