class RenamePersonalityColumnToMyMonsters < ActiveRecord::Migration[5.2]
  def change
    rename_column :my_monsters, :personality, :parsonarity_id
  end
end
