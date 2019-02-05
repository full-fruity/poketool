class CreateWeakPoints < ActiveRecord::Migration[5.2]
  def change
    create_table :weak_points do |t|
      t.integer :from_type_id
      t.integer :to_type_id

      t.timestamps
    end
  end
end
