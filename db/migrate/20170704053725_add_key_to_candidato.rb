class AddKeyToCandidato < ActiveRecord::Migration
  def change
    add_column :candidatos, :key, :string
  end
end
