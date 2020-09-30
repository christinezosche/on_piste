class Trail < ApplicationRecord
    belongs_to :mountain
    has_many :users, through: :mountains
end
