class CreateVehicleServiceParts < ActiveRecord::Migration[5.2]
    def change
        create_table :vehicle_service_parts do |t|
            t.belongs_to :vehicle, foreign_key: true
            t.belongs_to :service, foreign_key: true
            t.belongs_to :part, foreign_key: true
            t.timestamps
        end
    end
end
