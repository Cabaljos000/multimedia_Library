class Music < ApplicationRecord
    belongs_to :user

    validates :title, presence: true
    validates :artist, presence: true
    validates :genre, presence: true
    validates :year, presence: true
    validate :description_word_limit
    has_one_attached :poster

    def description_word_limit
        if description.present? && description.split.size > 100
            errors.add(:description, "can't have more than 100 words")
        end
    end
end
  