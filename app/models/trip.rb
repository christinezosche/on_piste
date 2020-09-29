class Trip < ApplicationRecord
    belongs_to :user
    belongs_to :mountain

    validates :date, presence: true
    validates :mountain, presence: true
end
