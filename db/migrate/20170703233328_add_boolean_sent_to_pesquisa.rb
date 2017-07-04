class AddBooleanSentToPesquisa < ActiveRecord::Migration
  def change
    add_column :pesquisas, :enviado, :boolean
  end
end
