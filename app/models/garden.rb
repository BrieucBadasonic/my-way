class Garden < ApplicationRecord
  belongs_to :user
  has_many :garden_facilities
end
