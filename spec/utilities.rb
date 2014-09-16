def sign_in(user)
  visit "/login"
  fill_in 'name', :with => user.name
  fill_in 'password', :with => user.password
  click_button "Log In"
end
