# feature/menu.feature
Feature: Menu
As a user
I want to click in a menu item
So that I see a list all entries of that item

Scenario: User sees the Candidatos Listing
Given a logged in user
When I go to the homepage
And I click on Candidatos link
Then I should see "Listando Candidatos"

Scenario: User sees the Entrevista Listing
Given a logged in user
When I go to the homepage
And I click on Entrevistas link
Then I should see "Listando Entrevistas"

Scenario: User sees the Pesquisa Listing
Given a logged in user
When I go to the homepage
And I click on Pesquisas link
Then I should see "Listando Pesquisas"