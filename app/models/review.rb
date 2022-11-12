class Review < ApplicationRecord
  belongs_to :drink
  validates :content, length: {minimum: 20}
  # validates :rating, inclusion: 1..10
end
