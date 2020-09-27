class User < ApplicationRecord
    has_secure_password
    validates :first_name, presence: true
    validates :email, 
    presence: true, 
    uniqueness: true,
    format: { with: /^(.+)@(.+)$/, message: "Invalid email"  }       
    


    has_many :trips
    has_many :ratings
    has_many :mountains, through: :trips
    has_many :trails, through: :ratings

end
