require 'rails_helper'

describe 'logging in' do
  it "allows a user to login" do
    user = User.create(:name => 'bob', :admin => true, :password => "123")
    visit "/login"
    fill_in 'name', :with => "bob"
    fill_in 'password', :with => "123"
    click_button "Log In"
    expect(page).to have_content "Train information"
  end
end
