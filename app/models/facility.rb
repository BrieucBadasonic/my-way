class Facility < ApplicationRecord
  has_many :garden_facilities
  has_many :gardens, through: :garden_facilities
  has_one_attached :image
  validates :name, inclusion: { in: ['shower', 'toilet', 'bbq', 'bonfire', 'electricity', 'water', 'wifi', 'pets'] }
end
