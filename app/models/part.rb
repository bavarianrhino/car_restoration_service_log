class Part < ApplicationRecord
    belongs_to :vendor
    has_many :vehicle_service_parts
    has_many :vehicles, through: :vehicle_service_parts
    has_many :services, through: :vehicle_service_parts

    # Need to grab vehicles??
end
