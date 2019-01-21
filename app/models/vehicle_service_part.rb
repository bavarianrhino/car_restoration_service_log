class VehicleServicePart < ApplicationRecord
        belongs_to :vehicle
        belongs_to :service
        belongs_to :part
        has_many :owners, through: :vehicles
        has_many :owners, through: :parts
end
