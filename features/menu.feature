# feature/menu.feature
Feature: Menu
As an admin
I want to click in a menu item
So that I see a list all entries of that item

Scenario: Admin sees the Candidatos Listing
Given a logged in admin
When I go to the homepage
And I click on Candidatos link
Then I should see "Listando Candidatos"
Then I should see "Selecionar Colunas"
Then I should see "Importar Lista CSV"
Then I should see "Exportar CSV"

Scenario: Admin sees the Candidatos Information
Given a logged in admin
When I go to the homepage
And I click on Candidatos link
Then I should see "Nome"
Then I should see "Rg"
Then I should see "Cpf"
Then I should see "Sexo"
Then I should see "Nascimento"
Then I should see "Email"
Then I should see "Endereco"
Then I should see "Bairro"
Then I should see "Cidade"

Scenario: Admin sees the Entrevista Listing
Given a logged in admin
When I go to the homepage
And I click on Entrevistas link
Then I should see "Listando Entrevistas"
Then I should see "Selecionar Colunas"
Then I should see "Nova entrevista"

Scenario: Admin sees the Entrevista Information
Given a logged in admin
When I go to the homepage
And I click on Entrevistas link
Then I should see "Entregou documentos"
Then I should see "Historico escolar"
Then I should see "Numero de pessoas"
Then I should see "Iptu"
Then I should see "Veiculos"
Then I should see "Renda bruta"
Then I should see "Renda bruta per capita"
Then I should see "Gastos totais"
Then I should see "Renda liq"
Then I should see "Rlpc"
Then I should see "Obs"
Then I should see "Aprovado"

Scenario: Admin sees the Pesquisa Listing
Given a logged in admin
When I go to the homepage
And I click on Pesquisas link
Then I should see "Listando Pesquisas"
Then I should see "Selecionar Colunas"

Scenario: Admin sees the Pesquisa Information
Given a logged in admin
When I go to the homepage
And I click on Pesquisas link
Then I should see "Cidade"
Then I should see "Transporte"
Then I should see "Tipo de trabalho"
Then I should see "Renda mensal"
Then I should see "Ex-aluno"
Then I should see "Parente no CASD"

Scenario: User sees the Minha Conta webpage
Given a logged in user
When I go to the homepage
And I click on "Minha Conta"
Then I should see "Edit User"
Then I should see "Cancel my account"

Scenario: User logs out
Given a logged in user
When I go to the homepage
And I click on "Sair"
Then I should see "Entrar"