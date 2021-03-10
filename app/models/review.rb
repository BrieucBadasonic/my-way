class Review < ApplicationRecord
  belongs_to :garden
  belongs_to :segment
  belongs_to :user

  validates :description, :rating, presence: true
end
