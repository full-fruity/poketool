class CreateStrongPoints < ActiveRecord::Migration[5.2]
  def change
    create_table :strong_points do |t|
      t.integer :from_type_id
      t.integer :to_type_id

      t.timestamps
    end
  end
end
