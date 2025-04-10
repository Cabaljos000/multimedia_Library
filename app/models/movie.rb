class Movie < ApplicationRecord
    belongs_to :user
    has_one_attached :poster  #picture 
  
    validates :title, presence: true
    validates :description, presence: true
    validates :rating, inclusion: { in: 1..5 }
  end
  