class RenameParsonarityColumnToMyMonsters < ActiveRecord::Migration[5.2]
  def change
    rename_column :my_monsters, :parsonarity_id, :parsonality_id
  end
end
