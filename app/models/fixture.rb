class Fixture < ApplicationRecord
  belongs_to :league
  has_many :member_guesses
end
