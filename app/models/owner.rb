class Owner < ApplicationRecord
    has_many :vehicles

    # has_secure_password
    # dependent :destroy

    def get_vehicles
      vehicles = Vehicle.where(owner: self)
    end

    def total_hours_of_service
      total_hours = 0
      get_vehicles.each do |v|
        #call total hours of service on each vehicle
        #originating from vehicle class
        total_hours += v.total_hours_of_service
      end
      total_hours
    end

    def total_parts_cost
      total_cost = 0
      get_vehicles.each do |v|
        #byebug
        if v.total_parts_cost.present?
          total_cost += v.total_parts_cost
        end
      end
      total_cost
    end

    
end
