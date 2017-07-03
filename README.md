
     ,-----.  ,---.   ,---.  ,------.      ,--.   ,--.             ,--.                 ,--. 
    '  .--./ /  O  \ '   .-' |  .-.  \      \  `.'  /,---.  ,---.,-'  '-.    ,--.  ,--./   | 
    |  |    |  .-.  |`.  `-. |  |  \  :      \     /| .-. :(  .-''-.  .-'     \  `'  / `|  | 
    '  '--'\|  | |  |.-'    ||  '--'  /       \   / \   --..-'  `) |  |        \    /   |  | 
     `-----'`--' `--'`-----' `-------'         `-'   `----'`----'  `--'         `--'    `--' 
                                                                                         
Bem vindo ao projeto de gerenciamento de perfil socio-econômico dos candidatos ao CasdVest/Casdinho!

## Quick Start

1. Acesse http://c9.io/ e crie uma conta gratuita
2. Clique em "Create new workspace"
3. Selecione "workspace name" e "description" de acordo com sua preferência
4. Colar `git@github.com:mknarciso/casd.git` em "Clone from Git or Mercurial URL"
5. Em "Choose a template" selecione "Ruby"
6. Clique em "Create Workspace"
7. Na aba "bash" (terminal), rode: `$ bundle install`
8. A seguir: `$ rake db:migrate`
9. Clique em "Run Project"
10. Acesse o projeto através do link mostrado no terminal!
11. Para inserir o usuário inicial rode: `$ rake db:seed`
    - usuario: admin@gmail.com
    - senha:   adminpassword
## Rodar Testes

* Testes unitários: `$ rake test`
* Testes do Cucumber: `$ rake`

## Candidatos

É possível adicionar diversos candidatos de uma só vez, através de um arquivo "csv", para isso o arquivo deve cumprir alguns requisitos:
* Os campos devem ser separados por `;`, essa modificação foi implementada para garantir que as virgulas do endereço ou outros campos não interfiram na leitura dos dados.
* A primeira linha (header) dever ser a seguinte:
`inscricao;nome;rg;cpf;sexo;nascimento;responsavel;parentesco;celular;telefone;email;endereco;bairro;cep;cidade;especiais;nec_especial;tipo_escola;escolaridade;nome_escola;trabalha;profissao;transporte;internet;ex_aluno;como_conheceu;data_inscricao;facebook
`
* O campo `nascimento` deve estar no formato `%d/%m/%Y` 
* O campo `data_inscricao` deve estar no formato `%d/%m/%Y %H:%M`
* Existe na raiz um arquivo `seed_test.csv` que serve de exemplo para importação.

## Tabelas

* Todas as tabelas utilizam o plugin DataTable encontrado em "https://datatables.net"