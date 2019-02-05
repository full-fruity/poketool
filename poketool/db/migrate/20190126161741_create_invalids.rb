class CreateInvalids < ActiveRecord::Migration[5.2]
  def change
    create_table :invalids do |t|
      t.integer :from_type_id
      t.integer :to_type_id

      t.timestamps
    end
  end
end
