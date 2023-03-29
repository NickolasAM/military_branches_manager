class MilitaryBranch < ApplicationRecord
  has_many :aircrafts

  validates :name, :year_established, presence: true
  validates :sea_based, inclusion: { in: [true, false] }
end

