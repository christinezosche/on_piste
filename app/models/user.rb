class User < ApplicationRecord
    
    has_secure_password

    validates :first_name, presence: true
    validates :email, presence: true
    validates :email, uniqueness: true


    has_many :trips
    has_many :mountains, through: :trips
    has_many :trails, through: :mountains

    def self.from_omniauth(auth)
        find_or_create_by(email: auth[:info][:email], first_name: auth[:info][:first_name]) do |user|
            user.password = SecureRandom.hex(15)
        end
    end

    def number_of_visits
        self.trips.count
    end

    def self.sort_by_top_users
        self.all.sort_by {|user| user.trips.count}.reverse
    end

    def self.top_5
        self.sort_by_top_users[0..4]
    end

    def top_5_trips
        self.trips.sort_by_date_descending[0..4]
    end

    def has_visited?(mountain)
        self.mountains.include?(mountain)
    end

end
