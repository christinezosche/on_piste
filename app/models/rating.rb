class Rating < ApplicationRecord
    belongs_to :user
    belongs_to :mountain
    belongs_to :trail
end
