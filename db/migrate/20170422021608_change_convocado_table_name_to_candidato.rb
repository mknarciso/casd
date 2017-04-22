class ChangeConvocadoTableNameToCandidato < ActiveRecord::Migration
  def change
    drop_table :candidatos
    rename_table :convocados, :candidatos
  end
end
