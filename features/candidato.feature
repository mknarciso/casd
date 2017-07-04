# feature/menu.feature
Feature: Candidato
As an assistant
I want to click in Candidatos ans Novo Candidato
So that I see the Novo candidato form

Scenario: Admin sees the Novo Candidato form
Given a logged in assistant
When I go to the homepage
And I click on Candidatos link
And I click on "Novo Candidato"
Then I should see "Novo candidato"
Then I should see "Inscricao"
Then I should see "Nome"
Then I should see "Rg"
Then I should see "Cpf"
Then I should see "Sexo"
Then I should see "Nascimento"
Then I should see "Voltar"
