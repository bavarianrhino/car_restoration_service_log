class CreateVehicleServiceParts < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_service_parts do |t|
      t.integer :vehicle_id
      t.integer :service_id
      t.integer :part_id

      t.timestamps
    end
  end
end
