class Trail < ApplicationRecord
    belongs_to :mountain
    has_many :ratings
    has_many :users, through: :ratings
end
