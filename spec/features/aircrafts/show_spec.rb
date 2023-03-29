require "rails_helper"

RSpec.describe "Aircraft show page", type: :feature do
  before :each do
    @navy = MilitaryBranch.create!(name: "Navy", sea_based: true, year_established: 1938)
    @usmc = MilitaryBranch.create!(name: "USMC", sea_based: true, year_established: 1917)
    @army = MilitaryBranch.create!(name: "Army", sea_based: false, year_established: 1941)
    @airforce = MilitaryBranch.create!(name: "AirForce", sea_based: true, year_established: 1947)
    @lightning = Aircraft.create!(military_branch_id: @navy.id, name: "Lightning", fixed_wing: true, pilot_count: 2)
    @osprey = Aircraft.create!(military_branch_id: @usmc.id, name: "Osprey", fixed_wing: false, pilot_count: 2)
    @apache = Aircraft.create!(military_branch_id: @army.id, name: "Apache", fixed_wing: false, pilot_count: 2)
    @warthog = Aircraft.create!(military_branch_id: @airforce.id, name: "Warthog", fixed_wing: true, pilot_count: 2)
  end
  #User Story 4
  it 'shows aircrafts id and attributes' do
    visit "/aircrafts/#{@lightning.id}"

    expect(page).to have_content(@lightning.id)
    expect(page).to have_content(@lightning.name)
    expect(page).to have_content(@lightning.fixed_wing)
    expect(page).to have_content(@lightning.pilot_count)

    expect(page).to_not have_content(@warthog.name)
  end
end