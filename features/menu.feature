# feature/menu.feature
Feature: Menu
As a user
I want to click in the menu Candidatos
So that I see a list of Candidatos

Scenario: User sees the homepage
When I go to the homepage
And I click on Candidatos link
Then I should see "Listando Candidatos"