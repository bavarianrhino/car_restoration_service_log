class Part < ApplicationRecord
    belongs_to :vendor
    has_many :vehicles
    has_many :services
    # Need to grab vehicles??
end
