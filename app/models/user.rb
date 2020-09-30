class User < ApplicationRecord
    
    has_secure_password

    validates :first_name, presence: true
    validates :email, presence: true
    validates :email, uniqueness: true
    validates :password, length: { in: 6..20 }


    has_many :trips
    has_many :mountains, through: :trips
    has_many :trails, through: :mountains

    def self.from_omniauth(auth)
        find_or_create_by(email: auth[:info][:email], first_name: auth[:info][:first_name]) do |user|
            user.password = SecureRandom.hex(15)
        end
    end

end
