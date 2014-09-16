require 'rails_helper'

describe "creating a new station" do
  it "allows a user to create a new station when a name is provided" do
    visit "/stations/new"
    fill_in 'station[name]', :with => "Station TEST"
    click_button "Create Station"
    expect(page).to have_content "Train information"
  end

  it "returns an error message when a station name is not provided" do
    visit "/stations/new"
    fill_in 'station[name]', :with => ""
    click_button "Create Station"
    expect(page).to have_content "Name can't be blank"
  end
end

describe "returning to index" do
  it "returns the user to /stations/ when clicking 'Return to Station Index'" do
    visit "/stations/new"
    click_link "Return to Station Index"
    expect(page).to have_content "Train information"
  end
end
