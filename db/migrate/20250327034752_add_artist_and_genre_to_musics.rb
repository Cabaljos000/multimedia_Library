class AddArtistAndGenreToMusics < ActiveRecord::Migration[8.0]
  def change
    add_column :musics, :artist, :string
    add_column :musics, :genre, :string
  end
end
