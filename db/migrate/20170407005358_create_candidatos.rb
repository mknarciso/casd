class CreateCandidatos < ActiveRecord::Migration
  def change
    create_table :candidatos do |t|
      t.string :name
      t.date :born

      t.timestamps null: false
    end
  end
end
