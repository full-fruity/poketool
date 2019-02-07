class ChangeDatatypeTypeOfMonster < ActiveRecord::Migration[5.2]
  def change
    change_column :monsters, :type1, :'integer USING CAST(type1 AS integer)'
    change_column :monsters, :type2, :'integer USING CAST(type2 AS integer)'
  end
end
