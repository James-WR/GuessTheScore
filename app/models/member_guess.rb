class MemberGuess < ApplicationRecord
  belongs_to :member
  belongs_to :fixture
end
