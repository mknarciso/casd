# feature/menu.feature
Feature: Entrevista
As a user
I want to click in Entrevistas and Nova entrevista
So that I see the entrevista form

Scenario: User sees the Entrevista form
Given a logged in user
When I go to the homepage
And I click on Entrevistas link
And I click on "Nova entrevista"
Then I should see "Nova entrevista"
Then I should see "Entregou documentos?"
Then I should see "Iptu"
Then I should see "Aluguel"
Then I should see "Gastos totais"
Then I should see "Aprovado"
Then I should see "Voltar"