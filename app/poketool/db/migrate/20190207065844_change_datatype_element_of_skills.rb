class ChangeDatatypeElementOfSkills < ActiveRecord::Migration[5.2]
  def change
    change_column :skills, :element, :'integer USING CAST(element AS integer)'
  end
end
