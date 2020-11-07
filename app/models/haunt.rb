class Haunt < ApplicationRecord
    has_one :haunts_location
    has_many :ratings

    validates :name, presence: true, uniquness: true
    validates :description, presence: true
end
