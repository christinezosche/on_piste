class Mountain < ApplicationRecord
    has_many :trails
    has_many :trips
    has_many :users, through: :trips

    def mountain_rating
        total_ratings = self.trails.ratings
        total_ratings.sum / total_ratings.size.to_f
    end

    def number_of_visits
        self.trips.count
    end

    def self.sort_by_country
        order(country: :asc)
    end

    #Mountain.all.sort {|mountain| mountain.mountain_rating}.reverse
    
    #Mountain.all.sort {|mountain| mountain.number_of_visits}.reverse
    

end
