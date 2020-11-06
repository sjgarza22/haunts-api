class Haunt < ApplicationRecord
    has_one :haunts_location
    has_many :ratings
end
