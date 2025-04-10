class AddFieldsToMovies < ActiveRecord::Migration[8.0]
  def change
    add_column :movies, :cover_picture, :string
    add_column :movies, :franchise, :string
  end
end
