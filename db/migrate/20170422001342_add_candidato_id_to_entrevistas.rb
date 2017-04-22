class AddCandidatoIdToEntrevistas < ActiveRecord::Migration
  def change
    add_column :entrevistas, :candidato_id, :integer
  end
end
