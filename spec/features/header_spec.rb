require "rails_helper"
#shows will always have an :id
RSpec.describe "military branch show page", type: :feature do
  before :each do
    @navy = MilitaryBranch.create!(name: "Navy", sea_based: true, year_established: 1938)
    @usmc = MilitaryBranch.create!(name: "USMC", sea_based: true, year_established: 1917)
    @army = MilitaryBranch.create!(name: "Army", sea_based: true, year_established: 1941)
    @airforce = MilitaryBranch.create!(name: "AirForce", sea_based: true, year_established: 1947)
    @lightning = Aircraft.create!(military_branch_id: @navy.id, name: "Lightning", fixed_wing: true, pilot_count: 2)
    @osprey = Aircraft.create!(military_branch_id: @usmc.id, name: "Osprey", fixed_wing: false, pilot_count: 2)
    @apache = Aircraft.create!(military_branch_id: @army.id, name: "Apache", fixed_wing: false, pilot_count: 2)
    @warthog = Aircraft.create!(military_branch_id: @airforce.id, name: "Warthog", fixed_wing: true, pilot_count: 2)
  end
  #User Story 8
  it 'has a link to aircrafts index on every page' do
    visit '/military_branches'

    expect(page).to have_link("Aircrafts", :href => "/aircrafts")
    visit "/aircrafts/#{@lightning.id}"
    expect(page).to have_link("Aircrafts", :href => "/aircrafts")
    #link_to in application.html.erb(shows in every page)
  end
  #User Story 9
  it 'has link to military branches index on every page' do
    visit '/military_branches'

    expect(page).to have_link("Military Branches", :href => "/military_branches")
    visit "/aircrafts/#{@lightning.id}"
    expect(page).to have_link("Military Branches", :href => "/military_branches")    
  end
end