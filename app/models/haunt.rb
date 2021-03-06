class Haunt < ApplicationRecord
    # extend Geocoder::Model::ActiveRecord
    
    has_one :haunts_location
    has_many :ratings

    validates :name, presence: true, uniqueness: true
    validates :description, presence: true
end
