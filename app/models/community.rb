class Community < ApplicationRecord
  validates :join_code, :community_name, presence: true
end
