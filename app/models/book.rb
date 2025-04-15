class Book < ApplicationRecord
    belongs_to :user
    has_one_attached :cover_image

    validates :title, presence: true
    validates :author, presence: true
    validates :publication_year, presence: true
    validates :genre, presence: true
    validates :description, presence: true
end
  