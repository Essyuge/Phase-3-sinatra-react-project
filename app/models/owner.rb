class Owner < ActiveRecord::Base
    has_many :rentals

    has_secure_password
end