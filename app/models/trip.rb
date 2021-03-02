class Trip < ApplicationRecord
  belongs_to :user

  validates :final_destination, presence: true
end
