class Segment < ApplicationRecord
  belongs_to :trip
  belongs_to :garden
  has_one :review

  validates :destination, presence: true
  geocoded_by :destination,
    latitude: :destination_latitude,
    longitude: :destination_longitude
  after_validation :geocode, if: :will_save_change_to_destination?

  geocoded_by :start,
    latitude: :start_latitude,
    longitude: :start_longitude
  after_validation :geocode, if: :will_save_change_to_destination?

  def completed!
    update(completed: :true)
  end
end
