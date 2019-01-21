class AddVendorIdToParts < ActiveRecord::Migration[5.2]
  def change
    add_column :parts, :vendor_id, :integer
  end
end
