class AddCandidatoIdToPesquisa < ActiveRecord::Migration
  def change
    add_column :candidatos, :pesquisa_id, :integer
    add_column :candidatos, :entrevista_id, :integer
  end
end
