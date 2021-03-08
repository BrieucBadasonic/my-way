class Facility < ApplicationRecord
  has_many :garden_facilities
  has_many :gardens, through: :garden_facilities

  validates :name, inclusion: { in: ['shower', 'toilet', 'bbq', 'bonfire', 'electricity', 'water', 'wifi', 'pet_allowed'] }
end
