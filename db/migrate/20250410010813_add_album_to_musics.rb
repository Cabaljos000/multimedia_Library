class AddAlbumToMusics < ActiveRecord::Migration[8.0]
  def change
    add_column :musics, :album, :string
  end
end
