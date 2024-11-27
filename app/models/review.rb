class Review < ApplicationRecord
  # A review must belong to a restaurant.
  belongs_to :restaurant

  # A review must have a content.
  # A review must have a rating.
  validates :content,:rating, presence: true

  # A review’s rating must be an integer.
  validates :rating, numericality: { only_integer: true }

  # A review’s rating must be a number between 0 and 5.
  validates :rating, inclusion: { in: 0..5, message: "must be between 0 and 5" }
end
