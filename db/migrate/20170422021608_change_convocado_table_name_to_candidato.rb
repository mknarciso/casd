class ChangeConvocadoTableNameToCandidato < ActiveRecord::Migration
  def change
    rename_table :convocados, :candidatos
  end
end
