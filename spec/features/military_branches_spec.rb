require "rails_helper"

RSpec.describe "military branches create, read, and destroy", type: :feature do
  before :each do
    @navy = MilitaryBranch.create!(name: "Navy", sea_based: true, year_established: 1938)
    @usmc = MilitaryBranch.create!(name: "USMC", sea_based: true, year_established: 1917)
    @army = MilitaryBranch.create!(name: "Army", sea_based: true, year_established: 1941)
    @airforce = MilitaryBranch.create!(name: "AirForce", sea_based: true, year_established: 1947)
  end

  describe "military branches index page" do
    describe "user sees all military branches" do
      describe "they visit /military_branches" do
        it "displays all military branches" do
    
          visit '/military_branches'
    
          expect(page).to have_content(@usmc.name)
          expect(page).to have_content(@usmc.year_established)
          
        end
      end
    end   
  end

  describe "Military branches new page" do
    it 'renders an empty form' do

      visit '/military_branches/new'

      expect(page).to have_content("Name:")
      expect(page).to have_content("Sea Based:")
      expect(page).to have_content("Year Established:")
    end
  end

  describe 'Military branches create' do
    it 'creates the a branch with the field' do

      visit '/military_branches/new'
    
      page.fill_in 'military_branch[name]', with: 'Coast Gaurd'
      page.check 'military_branch[sea_based]'
      page.fill_in 'military_branch[year_established]', with: '1980'
      
      click_button "submit"
    
      expect(page).to have_content("Coast Gaurd")
    end
  end
end
