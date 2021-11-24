class League < ApplicationRecord
  has_many :communities
  has_many :fixtures
end
