class ChangeKeyFromIntToString < ActiveRecord::Migration
  def change
    change_column :match_tables, :key, :string
  end
end
