class CreateConvocados < ActiveRecord::Migration
  def change
    create_table :convocados do |t|
      t.integer :inscricao
      t.string :nome
      t.string :rg
      t.string :cpf
      t.string :sexo
      t.date :nascimento
      t.string :responsavel
      t.string :parentesco
      t.string :celular
      t.string :telefone
      t.string :email
      t.string :endereco
      t.string :bairro
      t.string :cep
      t.string :cidade
      t.boolean :especiais
      t.string :nec_especial
      t.string :tipo_escola
      t.string :escolaridade
      t.string :nome_escola
      t.boolean :trabalha
      t.string :profissao
      t.string :transporte
      t.boolean :internet
      t.string :ex_aluno
      t.string :como_conheceu
      t.date :data_inscricao
      t.string :facebook

      t.timestamps null: false
    end
  end
end
