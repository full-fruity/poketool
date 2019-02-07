class RenameElementColumnToSkill < ActiveRecord::Migration[5.2]
  def change
    rename_column :skills, :element, :type_id
  end
end
