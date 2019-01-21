class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.string :vin
      t.string :engine
      t.string :car_classification
      t.string :color

      t.timestamps
    end
  end
end
