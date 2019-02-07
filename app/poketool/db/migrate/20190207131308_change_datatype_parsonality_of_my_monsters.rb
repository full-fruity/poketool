class ChangeDatatypeParsonalityOfMyMonsters < ActiveRecord::Migration[5.2]
  def change
    change_column :my_monsters, :personality, :'integer USING CAST(personality AS integer)'
  end
end
