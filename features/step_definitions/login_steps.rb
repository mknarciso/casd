Given(/^I fill in "([^\s]+)" with "([^\s]+)"$/) do |arg1,arg2|
  fill_in arg1, :with => arg2
end

Given(/^I press "(.+)"$/) do |arg|
  click_button(arg)
end

Given(/^a valid user$/) do
  @user = User.new({
             :email => "admin@hotmail.com",
             :password => "adminpassword",
             :password_confirmation => "adminpassword"
           })
    @user.save!
end

When(/^I fill in user data$/) do
    fill_in "Email", :with => "admin@hotmail.com"
    fill_in "Password", :with => "adminpassword" 
end

When(/^I go to login page$/) do
  visit user_session_path
end