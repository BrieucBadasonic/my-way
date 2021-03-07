class Trip < ApplicationRecord
  belongs_to :user
  has_many :segments
  has_many :gardens, through: :segments

  validates :final_destination, presence: true

  geocoded_by :final_destination,
    latitude: :final_destination_latitude,
    longitude: :final_destination_longitude
  after_validation :geocode, if: :will_save_change_to_final_destination?

  # geocoded_by :start_location,
  #   latitude: :start_location_latitude,
  #   longitude: :start_location_longitude
  # after_validation :geocode, if: :will_save_change_to_start_location?

end
