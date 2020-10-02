class Trip < ApplicationRecord
    belongs_to :user
    belongs_to :mountain

    validates :date, presence: true
    validates :mountain, presence: true


    def self.sort_by_date_descending
        order(date: :desc)
    end

    def self.sort_by_date_ascending
        order(date: :asc)
    end


end
