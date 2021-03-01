class Review < ApplicationRecord
  belongs_to :garden
  belongs_to :segment
end
