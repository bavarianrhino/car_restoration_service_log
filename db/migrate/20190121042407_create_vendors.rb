class CreateVendors < ActiveRecord::Migration[5.2]
  def change
    create_table :vendors do |t|
      t.string :name
      t.string :contact
      t.string :website
      t.string :location

      t.timestamps
    end
  end
end
