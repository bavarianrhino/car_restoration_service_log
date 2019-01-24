class Vehicle < ApplicationRecord
    belongs_to :owner
    has_many :services
    has_many :parts

    def total_hours_of_service
      total_hours = 0
      services = Service.where(vehicle: self)
      services.each do |s|
        total_hours += s.work_hours
      end
      total_hours
    end

    def total_parts_cost
      total_cost = 0
      services = Service.where(vehicle: self)
      services.each do |s|
        part_cost = s.part.cost
        total_cost += part_cost
      end
      total_cost
    end

    #list parts serviced
    def list_parts_serviced
      serviced_parts = []
      services = Service.where(vehicle: self)
      services.parts.each do |s|
        serviced_parts << s.part_name
      end
      serviced_parts
    end


    #list vendors of parts

end
