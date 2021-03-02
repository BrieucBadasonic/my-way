class Review < ApplicationRecord
  belongs_to :garden
  belongs_to :segment

  validates :description, :rating, presence: true
end
