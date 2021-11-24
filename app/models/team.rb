class Team < ApplicationRecord
  belongs_to :league
  has_many :fixtures
end
