class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.string :name
      t.string :screen_name
      t.string :element
      t.string :category
      t.integer :power
      t.integer :accuracy
      t.integer :pp

      t.timestamps
    end
  end
end
