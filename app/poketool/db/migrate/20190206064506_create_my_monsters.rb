class CreateMyMonsters < ActiveRecord::Migration[5.2]
  def change
    create_table :my_monsters do |t|
      t.string :user, null: false
      t.string :monster, null: false
      t.string :nicname
      t.string :personality, null: false
      t.integer :individual_hp
      t.integer :individual_atk
      t.integer :individual_blk
      t.integer :individual_ctc
      t.integer :individual_def
      t.integer :individual_spd
      t.integer :effort_hp
      t.integer :effort_atk
      t.integer :effort_blk
      t.integer :effort_ctc
      t.integer :effort_def
      t.integer :effort_spd
      t.string :skill1
      t.string :skill2
      t.string :skill3
      t.string :skill4

      t.timestamps
    end
  end
end
