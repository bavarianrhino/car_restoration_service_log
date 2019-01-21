class Vendor < ApplicationRecord
    has_many :parts
    has_many :vehicle_service_parts, through: :parts
end
