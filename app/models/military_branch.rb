class MilitaryBranch < ApplicationRecord
  has_many :aircrafts

  validates :name, :sea_based, :year_established, presence: true
end

