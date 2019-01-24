class Service < ApplicationRecord
    has_many :vehicles
    has_many :parts
    accepts_nested_attributes_for :parts
    accepts_nested_attributes_for :vehicles
end
