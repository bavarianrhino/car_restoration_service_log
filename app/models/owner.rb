class Owner < ApplicationRecord
    has_many :vehicles
    has_many :vehicle_service_parts, through: :vehicles
end
