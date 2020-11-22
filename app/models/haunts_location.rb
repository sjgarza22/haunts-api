class HauntsLocation < ActiveRecord::Base
  extend Geocoder::Model::ActiveRecord
  
  belongs_to :haunt
  
  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode

  validates :city, presence: true
  validates :state, presence: true
  validates :state_abbrev, presence: true
  validates :latitude, presence: true, numericality: true
  validates :longitude, presence: true, numericality: true
end
