class Book < ApplicationRecord
    belongs_to :user
    has_one_attached :poster
    validates :title, presence: true
    validates :author, presence: true
    validates :year, presence: true
    validates :genre, presence: true
    validates :summary, presence: true
end
  