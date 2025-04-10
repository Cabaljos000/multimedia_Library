class AddFieldsToMusics < ActiveRecord::Migration[8.0]
  def change
    add_column :musics, :album, :string
    add_column :musics, :rating, :integer
  end
end
