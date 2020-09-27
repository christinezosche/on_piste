class User < ApplicationRecord
    has_secure_password

    has_many :trips
    has_many :ratings
    has_many :mountains, through: :trips
    has_many :trails, through: :ratings

end
