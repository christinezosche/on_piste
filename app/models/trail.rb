class Trail < ApplicationRecord
    belongs_to :mountain
    has_many :users, through: :mountains
    has_many :ratings

    def trail_rating
        if !self.ratings.empty?
            numerator = self.ratings.values.sum
            denominator = self.ratings.values.size
            numerator.to_f / denominator.to_f
        else
            return 0.0
        end
    end

        #Trail.all.sort {|trail| trail.trail_rating}.reverse

end
