class Facility < ApplicationRecord
  has_many :garden_facilities

  validates :name, inclusion: { in: ['shower', 'toilet', 'bbq', 'bonfire', 'electricity', 'water', 'wifi'] }
end
