class Owner < ApplicationRecord
    has_many :vehicles

    # has_secure_password
    # dependent :destroy
end
