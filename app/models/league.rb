class League < ApplicationRecord
  validates :team_name, presence: true
end
