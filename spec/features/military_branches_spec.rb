require "rails_helper"

RSpec.describe "military branches index page", type: :feature do
  before :each do
    @navy = MilitaryBranch.create!(name: "Navy", sea_based: true, year_established: 1938)
    @usmc = MilitaryBranch.create!(name: "USMC", sea_based: true, year_established: 1917)
    @army = MilitaryBranch.create!(name: "Army", sea_based: false, year_established: 1941)
    @airforce = MilitaryBranch.create!(name: "AirForce", sea_based: true, year_established: 1947)
  end
end

describe "user sees all military branches" do
  describe "they visit /military_branches" do
    it "displays all military branches" do

      visit '/military_branches'

      expect(military_branch).to have_content(usmc.name)
      expect(military_branch).to have_content(usmc.year_established)
      
    end
  end
end   