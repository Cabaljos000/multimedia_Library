class AddFieldsToMusics < ActiveRecord::Migration[8.0]
  def change
    add_column :musics, :rating, :integer
  end
end
rails generate migration AddImageUrlToMusics image_url:string
