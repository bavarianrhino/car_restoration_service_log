class Vehicle < ApplicationRecord
    belongs_to :owner
    has_many :vehicle_service_parts
    has_many :services, through: :vehicle_service_parts
    has_many :parts, through: :vehicle_service_parts
end
