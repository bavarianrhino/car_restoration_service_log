class Owner < ApplicationRecord
    has_many :vehicles
    has_many :vehicle_service_parts, through: :vehicles

    # has_secure_password
    # dependent :destroy
end
