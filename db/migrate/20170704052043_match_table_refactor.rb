class MatchTableRefactor < ActiveRecord::Migration
  def change
    remove_column :candidatos, :entrevista_id
    remove_column :candidatos, :pesquisa_id
    remove_column :pesquisas, :candidato_id
    remove_column :entrevistas, :candidato_id
    add_reference :entrevistas, :candidato, index: true, foreign_key: true
    add_reference :pesquisas, :candidato, index: true, foreign_key: true
  end
end
