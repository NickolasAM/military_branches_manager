require "rails_helper"

describe MilitaryBranch, type: :model do
  describe "relationships" do
    it {should have_many(:aircrafts)}
  end

  describe "validations" do
    it {should validate_presence_of(:name)}
    it {should validate_inclusion_of(:sea_based).in_array([true, false]) }
    it {should validate_presence_of(:year_established)}
  end
end