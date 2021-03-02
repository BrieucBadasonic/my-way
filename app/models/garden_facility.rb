class GardenFacility < ApplicationRecord
  belongs_to :garden
  belongs_to :facility
  validates :facility, uniqueness: true
end
