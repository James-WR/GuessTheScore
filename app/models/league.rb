class League < ApplicationRecord
  has_many :fixtures
  has_many :communities
  validates :league_name, presence: true
end
