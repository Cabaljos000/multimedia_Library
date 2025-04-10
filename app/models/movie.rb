class Movie < ApplicationRecord
    belongs_to :user
    has_one_attached :image
    validates :rating, inclusion: { in: 1..10, message: "%{value} is not a valid rating" }
    validates :title, :director, :year, :rating, :description, :franchise, presence: true
end
  