require "rails_helper"

RSpec.describe 'Military Branch Creation' do

  it 'link to new page to military branch index' do
    visit '/military_branches'

    click_link("New Military Branch")
    
    expect(current_path).to eq("/military_branches/new")
  end

  it 'can create a new military branch' do

    visit '/military_branches/new'

    fill_in("name", with: "Coastgaurd")
  end



end