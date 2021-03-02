class Trip < ApplicationRecord
  belongs_to :user
  has_many :segments
<<<<<<< HEAD
=======
  has_many :gardens, through: :segments
>>>>>>> master

  validates :final_destination, presence: true

  geocoded_by :final_destination
  after_validation :geocode, if: :will_save_change_to_final_destination?

end
