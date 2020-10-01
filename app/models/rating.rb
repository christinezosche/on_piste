class Rating < ApplicationRecord
    belongs_to :trail
    validates :value, presence: true
end
