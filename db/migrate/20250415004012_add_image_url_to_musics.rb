class AddImageUrlToMusics < ActiveRecord::Migration[8.0]
  def change
    add_column :musics, :image_url, :string
  end
end
