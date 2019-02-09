class RenameSkillColumnToMyMonsters < ActiveRecord::Migration[5.2]
  def change
    rename_column :my_monsters, :skill1, :skill1_id
    rename_column :my_monsters, :skill2, :skill2_id
    rename_column :my_monsters, :skill3, :skill3_id
    rename_column :my_monsters, :skill4, :skill4_id
  end
end
