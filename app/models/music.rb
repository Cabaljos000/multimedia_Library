class Music < ApplicationRecord
    belongs_to :user

    validates :title, presence: true
    validates :artist, presence: true
    validates :genre, presence: true
end
  