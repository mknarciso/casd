When(/^I go to the homepage$/) do
  visit root_path
end

When(/^I click on (.*) link$/) do |arg1|
  expect(page).to have_content(arg1)
  visit("/#{arg1.downcase}/")
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  expect(page).to have_content(arg1)
end