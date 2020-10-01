class Trail < ApplicationRecord
    belongs_to :mountain
    has_many :users, through: :mountains
    has_many :ratings

    def trail_rating
        if self.ratings.empty?
            return 0.0
        else
            values = self.ratings.map do |rating|
                rating.value
            end
            numerator = values.sum
            denominator = values.size
            numerator.to_f / denominator.to_f
        end
    end

        #Trail.all.sort {|trail| trail.trail_rating}.reverse

end
