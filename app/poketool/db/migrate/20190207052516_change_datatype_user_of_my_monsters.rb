class ChangeDatatypeUserOfMyMonsters < ActiveRecord::Migration[5.2]
  def change
    change_column :my_monsters, :user, 'integer USING CAST(user AS integer)'
    change_column :my_monsters, :monster, 'integer USING CAST(monster AS integer)'
  end
end
