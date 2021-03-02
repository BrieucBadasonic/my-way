class Segment < ApplicationRecord
  belongs_to :trip
  belongs_to :garden

  validates :destination, presence: true
end
