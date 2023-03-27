require "rails_helper"

describe Aircraft, type: :model do
  describe "relationships" do
    it {should belong_to(:military_branch)}
  end

  describe "validations" do
    it {should validate_presence_of(:military_branch_id)}
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:fixed_wing)}
    it {should validate_presence_of(:pilot_count)}
  end  
end