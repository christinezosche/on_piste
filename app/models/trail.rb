class Trail < ApplicationRecord
    belongs_to :mountain
    has_many :users, through: :mountains
    has_many :ratings

    def trail_rating

    end

        #Trail.all.sort {|trail| trail.trail_rating}.reverse

end
