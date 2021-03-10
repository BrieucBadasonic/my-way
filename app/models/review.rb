class Review < ApplicationRecord
  belongs_to :garden
  belongs_to :segment
  belongs_to :user

  validates :description, :rating, presence: true


  # def average_rating(garden)
  #   where(garden_id: garden).average(:rating)
  # end

  # def average_rating
  #   self.class.average(:rating).where(id: garden.id)
  # end
end
