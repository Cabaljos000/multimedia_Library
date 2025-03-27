class User < ApplicationRecord
    has_many :movies
    has_many :books
    has_many :musics
end
  
