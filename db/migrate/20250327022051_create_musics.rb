class CreateMusics < ActiveRecord::Migration[8.0]
  def change
    create_table :musics do |t|
      t.string :title
      t.string :artist
      t.integer :year

      t.timestamps
    end
  end
end
