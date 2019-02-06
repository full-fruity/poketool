class CreateMonsters < ActiveRecord::Migration[5.2]
  def change
    create_table :monsters do |t|
      t.integer :no
      t.string :name
      t.string :screen_name
      t.string :type1
      t.string :type2
      t.integer :hp
      t.integer :atk
      t.integer :blk
      t.integer :ctc
      t.integer :def
      t.integer :spd

      t.timestamps
    end
  end
end
