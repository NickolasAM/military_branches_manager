require "rails_helper"
#shows will always have an :id
RSpec.describe "military branch show page", type: :feature do
  before :each do
    @navy = MilitaryBranch.create!(name: "Navy", sea_based: true, year_established: 1938)
    @usmc = MilitaryBranch.create!(name: "USMC", sea_based: true, year_established: 1917)
    @army = MilitaryBranch.create!(name: "Army", sea_based: true, year_established: 1941)
    @airforce = MilitaryBranch.create!(name: "AirForce", sea_based: true, year_established: 1947)
  end
  #User Story 2
  it 'shows military branches ID and all attributes' do
    visit "/military_branches/#{@navy.id}"

    expect(page).to have_content(@navy.id)
    expect(page).to have_content(@navy.name)
    expect(page).to have_content(@navy.sea_based)
    expect(page).to have_content(@navy.year_established)

    expect(page).to_not have_content(@usmc.name)
  end
  #user story 7
  it 'show the number of aircrafts for each branch' do
    visit "/military_branches/#{@usmc.id}"
   
    expect(page).to have_content(@usmc.aircrafts.count)
    @lightning = Aircraft.create!(military_branch_id: @navy.id, name: "Lightning", fixed_wing: true, pilot_count: 2)
    @osprey = Aircraft.create!(military_branch_id: @usmc.id, name: "Osprey", fixed_wing: false, pilot_count: 2)
    @apache = Aircraft.create!(military_branch_id: @army.id, name: "Apache", fixed_wing: false, pilot_count: 2)
    @warthog = Aircraft.create!(military_branch_id: @airforce.id, name: "Warthog", fixed_wing: true, pilot_count: 2)
    expect(page).to have_content(@usmc.aircrafts.count)
    
  end
  #User Story 10
  it 'has aircrafts link from military branch' do

    visit "/military_branches/#{@usmc.id}"

    expect(page).to have_link("Aircrafts", :href => "/military_branches/#{@usmc.id}/aircrafts")    
  end
end