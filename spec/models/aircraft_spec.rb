require "rails_helper"

describe Aircraft, type: :model do
   describe "relationships" do
      it {should belong_to(:military_branch)}
   end
end