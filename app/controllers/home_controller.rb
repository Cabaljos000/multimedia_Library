class HomeController < ApplicationController
  def index
    @movies = Movie.all.to_a
    @books = Book.all.to_a
    @musics = Music.all.to_a
  end
end
