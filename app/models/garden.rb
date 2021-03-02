class Garden < ApplicationRecord
  belongs_to :user
  has_many :facilities, through: :garden_facilities

  validates :name, :description, :address, presence: true
  validates :tent_capacity, inclusion: { in: [1, 2, 3, 4, 5, 6, 7, 8, 9, 20] }
end
