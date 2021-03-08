class Garden < ApplicationRecord
  belongs_to :user
  has_many :garden_facilities
  has_many :trips, through: :segments
  has_many :facilities, through: :garden_facilities
  has_many :reviews, dependent: :destroy

  validates :name, :description, :address, presence: true
  validates :tent_capacity, inclusion: { in: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] }

  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
