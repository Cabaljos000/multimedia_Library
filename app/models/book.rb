class Book < ApplicationRecord
    belongs_to :user
    has_one_attached :image
    validates :title, presence: true
    validates :author, presence: true
    validates :genre, presence: true
end
  