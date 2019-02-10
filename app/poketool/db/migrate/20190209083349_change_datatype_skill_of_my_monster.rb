class ChangeDatatypeSkillOfMyMonster < ActiveRecord::Migration[5.2]
  def change
    change_column :my_monsters, :skill1, 'integer USING CAST(skill1 AS integer)'
    change_column :my_monsters, :skill2, 'integer USING CAST(skill2 AS integer)'
    change_column :my_monsters, :skill3, 'integer USING CAST(skill3 AS integer)'
    change_column :my_monsters, :skill4, 'integer USING CAST(skill4 AS integer)'
  end
end
