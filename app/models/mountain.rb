class Mountain < ApplicationRecord
    has_many :trails
    has_many :trips
    has_many :users, through: :trips

    def mountain_rating
        trail_ratings = []
        self.trails.each do |trail|
            trail_ratings << trail.trail_rating unless trail.trail_rating == 0.0
        end
        if trail_ratings.empty?
            return 0.0
        else
            result = trail_ratings.sum.to_f / trail_ratings.size.to_f
            result.round(2)
        end
    end

    def number_of_visits
        self.trips.count
    end

    def self.sort_by_country
        order(country: :asc)
    end
    

end
