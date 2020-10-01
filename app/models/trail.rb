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
            result = values.sum.to_f / values.size.to_f
            result.round(2)
        end
    end


end
