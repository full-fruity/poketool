class RenameUserColumnTo < ActiveRecord::Migration[5.2]
  def change
    rename_column :my_monsters, :user, :user_id
    rename_column :my_monsters, :monster, :monster_id
  end
end
