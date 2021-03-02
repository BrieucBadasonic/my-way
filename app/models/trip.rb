class Trip < ApplicationRecord
  belongs_to :user
  has_many :segments
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
