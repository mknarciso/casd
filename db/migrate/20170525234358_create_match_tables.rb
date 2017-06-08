class CreateMatchTables < ActiveRecord::Migration
  def change
    create_table :match_tables do |t|
      t.integer :candidato_id
      t.integer :entrevista_id
      t.integer :candidate_form_id
      t.integer :key

      t.timestamps null: false
    end
  end
end
