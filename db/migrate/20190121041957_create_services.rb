class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :date
      t.string :work_description
      t.integer :car_miles
      t.integer :work_hours
      t.integer :part_id, foreign_key: true
      t.integer :vehicle_id, foreign_key: true

      t.timestamps
    end
  end
end
