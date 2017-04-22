class CreateEntrevistas < ActiveRecord::Migration
  def change
    create_table :entrevistas do |t|
      t.boolean :entregou_documentos
      t.boolean :historico_escolar
      t.integer :numero_de_pessoas
      t.float :iptu
      t.float :veiculos
      t.float :holerites_mes1
      t.float :holerites_mes2
      t.float :holerites_mes3
      t.float :aposentadorias
      t.float :auxilios
      t.float :renda_bruta
      t.float :rbpc
      t.float :agua_mes1
      t.float :agua_mes2
      t.float :agua_mes3
      t.float :luz_mes1
      t.float :luz_mes2
      t.float :luz_mes3
      t.float :net_TV_mes1
      t.float :net_TV_mes2
      t.float :net_TV_mes3
      t.float :aluguel
      t.float :outros_gastos
      t.float :gastos_totais
      t.float :renda_liq
      t.float :rlpc
      t.string :obs
      t.boolean :aprovado

      t.timestamps null: false
    end
  end
end
