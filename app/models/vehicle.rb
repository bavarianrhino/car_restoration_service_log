class Vehicle < ApplicationRecord
    belongs_to :owner
    has_many :services
    has_many :parts
end
