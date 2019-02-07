class RenameTypeColumnToMonsters < ActiveRecord::Migration[5.2]
  def change
    rename_column :monsters, :type1, :type1_id
    rename_column :monsters, :type2, :type2_id
  end
end
