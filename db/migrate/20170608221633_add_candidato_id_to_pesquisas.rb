class AddCandidatoIdToPesquisas < ActiveRecord::Migration
  def change
    add_column :pesquisas, :candidato_id, :integer
  end
end
