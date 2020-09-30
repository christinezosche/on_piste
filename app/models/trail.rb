class Trail < ApplicationRecord
    belongs_to :mountain
    has_many :users, through: :mountains

    def trail_rating
        total_ratings = self.ratings
        total_ratings.sum / total_ratings.size.to_f
    end
end
