When(/^I go to the homepage$/) do
  visit root_path
end

When(/^I click on Candidatos link$/) do
  expect(page).to have_content("Candidatos")
  visit candidatos_path
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  expect(page).to have_content(arg1)
end