class Trip < ApplicationRecord
  belongs_to :user
  has_many :segments
  
  validates :final_destination, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
