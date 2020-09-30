class Mountain < ApplicationRecord
    has_many :trails
    has_many :trips
    has_many :users, through: :trips

end
