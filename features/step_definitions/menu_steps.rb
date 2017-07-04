When(/^I go to the homepage$/) do
  visit root_path
end

When(/^I click on (.*) link$/) do |arg1|
  expect(page).to have_content(arg1)
  visit("/#{arg1.downcase}/")
end

When(/^I click on "(.+)"/) do |arg|
  click_on(arg)
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  expect(page).to have_content(arg1)
end

#Given(/^I have one\s+user "([^\"]*)" with email "([^\"]*)" and password "([^\"]*)"$/) do |username,email, password|
#  @user = User.new(:email => email,
#                   :username=>username,
#                   :password => password,
#                   :password_confirmation => password)
#   @user.save!
#end

Given(/^a logged in admin$/) do
  @user = User.new({
             :email => "admin@hotmail.com",
             :password => "adminpassword",
             :password_confirmation => "adminpassword"
           })
  @user.save!  
  #Given %{a valid user}
  visit user_session_path
  fill_in "Email", :with => "admin@hotmail.com"
  fill_in "Password", :with => "adminpassword"
  click_button "Log in"
end

Given(/^a logged in user$/) do
  @user = User.new({
             :email => "admin@hotmail.com",
             :password => "adminpassword",
             :password_confirmation => "adminpassword"
           })
  @user.save!  
  #Given %{a valid user}
  visit user_session_path
  fill_in "Email", :with => "admin@hotmail.com"
  fill_in "Password", :with => "adminpassword"
  click_button "Log in"
end

Given(/^a logged in assistant$/) do
  @user = User.new({
             :email => "admin@hotmail.com",
             :password => "adminpassword",
             :password_confirmation => "adminpassword"
           })
  @user.save!  
  #Given %{a valid user}
  visit user_session_path
  fill_in "Email", :with => "admin@hotmail.com"
  fill_in "Password", :with => "adminpassword"
  click_button "Log in"
end