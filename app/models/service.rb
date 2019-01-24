class Service < ApplicationRecord
    belongs_to :vehicle
    #has_many :parts
    belongs_to :part
    #accepts_nested_attributes_for :parts
    #accepts_nested_attributes_for :vehicles
end
