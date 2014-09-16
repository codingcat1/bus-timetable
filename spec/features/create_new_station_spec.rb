require 'rails_helper'
require 'utilities.rb'

describe "creating a new station" do
  it "allows an admin to create a new station" do
    user = User.create(:name => 'bob', :admin => true, :password => "123")
    sign_in(user)
    expect(page).to have_content "Create a new Station"
  end

  it "stops a non admin from creating a new station" do
    user = User.create(:name => 'bob', :admin => false, :password => "123")
    sign_in(user)
    expect(page).to have_content "Not authorized"
  end

#   it "returns an error message when a station name is not provided" do
#     visit "/stations/new"
#     fill_in 'station[name]', :with => ""
#     click_button "Create Station"
#     expect(page).to have_content "Name can't be blank"
#   end
# end

# describe "returning to index" do
#   it "returns the user to /stations/ when clicking 'Return to Station Index'" do
#     visit "/stations/new"
#     click_link "Return to Station Index"
#     expect(page).to have_content "Train information"
  # end
end
