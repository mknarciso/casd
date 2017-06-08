class RenameCandidateFormsToPesquisas < ActiveRecord::Migration
  def change
    rename_table :candidate_forms, :pesquisas
  end
end
