class Owner < ApplicationRecord
    has_many :vehicles
    has_many :vehicle_service_parts, through: :vehicles
end
# class Vehicle < ApplicationRecord
#     belongs_to :owner
#     has_many :vehicle_service_parts
#     has_many :services, through: :vehicle_service_parts
#     has_many :parts, through: :vehicle_service_parts
# end
# class Service < ApplicationRecord
#     has_many :vehicle_service_parts
#     has_many :vehicles, through: :vehicle_service_parts
#     has_many :parts, through: :vehicle_service_parts
# end
# class Part < ApplicationRecord
#     belongs_to :vendor
#     has_many :vehicle_service_parts
#     has_many :vehicles, through: :vehicle_service_parts
#     has_many :services, through: :vehicle_service_parts
# end
# class Part < ApplicationRecord
#     belongs_to :vehicle
#     belongs_to :service
#     belongs_to :part
#     has_many :owners, through: :vehicles
#     has_many :owners, through: :parts
# end
# class Vendor < ApplicationRecord
#     has_many :parts
#     has_many :vehicle_service_parts, through: :parts
# end
