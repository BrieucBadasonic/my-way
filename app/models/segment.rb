class Segment < ApplicationRecord
  belongs_to :trip
  belongs_to :garden

  validates :destination, presence: true
  geocoded_by :destination
  after_validation :geocode, if: :will_save_change_to_destination?
end
