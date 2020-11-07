class HauntsLocation < ApplicationRecord
  belongs_to :haunt

  validates :city, presence: true
  validates :state, presence: true
  validates :state_abbrev, presence: true
  validates :latitude, presence: true, numericality: true
  validates :longitude, presence: true, numericality: true
end
