class Service < ApplicationRecord
    has_many :vehicle_service_parts
    has_many :vehicles, through: :vehicle_service_parts
    has_many :parts, through: :vehicle_service_parts
    accepts_nested_attributes_for :parts
    accepts_nested_attributes_for :vehicles
end
