require "rails_helper"

describe MilitaryBranch, type: :model do
   describe "relationships" do
      it {should have_many(:aircrafts)}
   end
end