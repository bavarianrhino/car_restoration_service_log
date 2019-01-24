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
      # total_cost = 0
      # services = Service.where(vehicle: self)
      # services.each do |s|
      #   part_cost = s.part.cost
      #   total_cost += (part_cost * s.part.quantity)
      # end
      # total_cost
      cost_of_part_designations.values.inject(:+)
    end

    #list parts serviced
    def list_parts_serviced
      serviced_parts = []
      services = Service.where(vehicle: self)
      services.each do |s|
        serviced_parts << s.part
      end
      serviced_parts
    end


    #list vendors of parts
    def list_of_vendors
      list_parts_serviced.map do |p|
        p.vendor
      end
    end

    def part_designations
      designations = list_parts_serviced.map { |p| p.part_designation }
      designations.uniq
    end

    def cost_of_part_designations
      #Part.where(part_designation: part_designations)
      part_designation_costs = Hash[part_designations.map {|p| [p,0]}]
      Part.where(part_designation: part_designations).each do |p|
        part_designation_costs[p.part_designation] += p.quantity * p.cost
        #byebug
      end
      part_designation_costs
    end


end
